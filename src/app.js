require('dotenv').config();
const Koa = require('koa');
const KoaBody = require('koa-body');
const router = require('./router');
const loggerMiddleware = require('./middlewares/loggerMiddleware');
const logUtil = require('./util/logUtil');

const app = new Koa();
app.use(KoaBody());
app.use(loggerMiddleware);
app.use(router.routes());
app.use(router.allowedMethods());

app.listen(process.env.PORT, () => {
  console.info(`服务已经启动，访问：http://localhost:${process.env.PORT}`);
  logUtil.info(`服务已经启动，访问：http://localhost:${process.env.PORT}`);
});
