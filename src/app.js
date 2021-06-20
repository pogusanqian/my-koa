require('dotenv').config();
const Koa = require('koa');
const KoaBody = require('koa-body');
const router = require('./router');

const app = new Koa();

app.use(KoaBody());
app.use(router.routes());
app.use(router.allowedMethods());

app.listen(process.env.PORT, () => {
  console.log(`服务已经启动，访问：http://localhost:${process.env.PORT}`);
});
