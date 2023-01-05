require('dotenv').config();
const Koa = require('koa');
const KoaBody = require('koa-body');
const router = require('./router');
const loggerMiddleware = require('./middlewares/loggerMiddleware');
const errorMiddleware = require('./middlewares/errorMiddleware');
const logUtil = require('./util/logUtil');
const cors = require('koa2-cors');

const app = new Koa();

// 设置跨域组件
app.use(cors({
  origin: "*",
  maxAge: 2592000,
  credentials: true
}));

// 解析请求体数据
app.use(KoaBody({ multipart: true }));

// 引用异常处理组件
app.use(errorMiddleware);

// 引用日志组件
app.use(loggerMiddleware);

// 配置路由组件
app.use(router.routes());
app.use(router.allowedMethods());

// 添加异常监听事件; koa的error事件好像只能处理同步的异常; 另外就是如果try了同步异常, 则不会触发error事件
app.on('error', err => logUtil.error(err.stack));

app.listen(process.env.PORT, () => {
  console.info(`服务已经启动，访问：http://localhost:${process.env.PORT}`);
  logUtil.info(`服务已经启动，访问：http://localhost:${process.env.PORT}`);
});


