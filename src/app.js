require('dotenv').config();
const Koa = require('koa');
const KoaBody = require('koa-body');
const koaStatic = require('koa-static');
const router = require('./router');
const loggerMiddleware = require('./middlewares/loggerMiddleware');
const logUtil = require('./util/logUtil');

const app = new Koa();
app.use(KoaBody());
app.use(loggerMiddleware);
// 设置静态资源的根目录是./src/static, 直接访问http://localhost:3000/imgs/美女1.jpg即可(router设置的跟路由pogu/mykoa不用写)
app.use(koaStatic(`${__dirname}/static`));
app.use(router.routes());
app.use(router.allowedMethods());

// 添加异常监听事件; koa的error事件好像只能处理同步的异常; 另外就是如果try了同步异常, 则不会触发error事件
app.on('error', err => {
  console.log('===============');
  logUtil.error(err.stack);
});

app.listen(process.env.PORT, () => {
  console.info(`服务已经启动，访问：http://localhost:${process.env.PORT}`);
  logUtil.info(`服务已经启动，访问：http://localhost:${process.env.PORT}`);
});
