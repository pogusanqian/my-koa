require('dotenv').config();
const Koa = require('koa');
const { koaBody } = require('koa-body');
const router = require('./router');
const cors = require('koa2-cors');
const loggerMiddleware = require('./middlewares/loggerMiddleware');
const errorMiddleware = require('./middlewares/errorMiddleware');

// 创建APP对象
const app = new Koa();
// 设置全局变量
global.logger = require('./util/logger');
global.ResponseError = require('./util/ResponseError');
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
// 启动服务器
app.listen(process.env.PORT, () => {
  console.info(`服务已经启动，访问：http://localhost:${process.env.PORT}`);
  logger.info(`服务已经启动，访问：http://localhost:${process.env.PORT}`);
});
