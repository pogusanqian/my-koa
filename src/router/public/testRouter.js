const testRouter = require('koa-router')();
const TestController = require('../../controller/TestController');

testRouter.get('/getText', (ctx, next) => TestController.getText(ctx, next));
testRouter.get('/getJson', (ctx, next) => TestController.getJson(ctx, next));
testRouter.get('/getMyself', (ctx, next) => TestController.getMyself(ctx, next));
testRouter.post('/getBody', (ctx, next) => TestController.getBody(ctx, next));
// 这里单独添加一个rest固定前缀比较好
testRouter.all('/restful/:dataBase/:tableName', (ctx, next) => TestController.student(ctx, next));

module.exports = testRouter;
