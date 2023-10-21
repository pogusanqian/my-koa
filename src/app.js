require('dotenv').config();
const fs = require('fs');
const path = require('path');
const http = require('http');
const https = require('https');
const Koa = require('koa');
const cors = require('koa2-cors');
const { koaBody } = require('koa-body');
const { default: enforceHttps } = require('koa-sslify');
const router = require('./router');
const loggerMiddleware = require('./middlewares/loggerMiddleware');
const errorMiddleware = require('./middlewares/errorMiddleware');
const logger = require('./util/logger');

// 创建APP对象
const app = new Koa();

// 设置全局变量
global.logger = require('./util/logger');
global.ResponseError = require('./util/ResponseError');

// 强制http重定向到https
app.use(enforceHttps({ port: process.env.PORT }));
// 设置跨域组件
app.use(cors({ origin: '*', maxAge: 60, credentials: true }));
// 设置body解析组件
app.use(koaBody({ multipart: true }));
// 设置日志组件
app.use(loggerMiddleware);
// 设置异常处理组件
app.use(errorMiddleware);
// 配置路由组件
app.use(router.routes()).use(router.allowedMethods());
// 添加异常监听事件
app.on('error', (err) => logger.error(err.stack));
// 捕捉程序异常
process.on('uncaughtException', (err) => logger.error(err.stack));

// 创建http服务器
http.createServer(app.callback()).listen(80, () => logger.info(`http服务启动, 访问https://localhost:80`));
// 创建https服务
const server = https.createServer(
  {
    passphrase: 'server',
    key: fs.readFileSync(path.join(__dirname, 'config', 'crt', 'server.key')),
    cert: fs.readFileSync(path.join(__dirname, 'config', 'crt', 'server.crt'))
  },
  app.callback()
);
server.listen(process.env.PORT, () => logger.info(`https服务启动，访问：https://localhost:${process.env.PORT}`));
