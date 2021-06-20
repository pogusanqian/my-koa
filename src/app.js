const Koa = require('koa');
const KoaBody = require('koa-body');
const router = require('./router');
const config = require('./config');

const app = new Koa();

app.use(KoaBody());
app.use(router.routes());
app.use(router.allowedMethods());

app.listen(config.port, () => {
  console.log(`服务已经启动，访问：http://localhost:${config.port}`)
});
