const testRouter = require('koa-router')();
const TestController = require('../../controller/TestController');

testRouter.prefix('/test');
testRouter.get('/getText', (ctx, next) => TestController.getText(ctx, next));
testRouter.get('/getJson', (ctx, next) => TestController.getJson(ctx, next));
testRouter.get('/getMyself', (ctx, next) => TestController.getMyself(ctx, next));

module.exports = testRouter;
