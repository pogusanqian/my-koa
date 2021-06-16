const testRouter = require('koa-router')();
const testController = require('../../controller/TestController');

testRouter.prefix('/test');
testRouter.get('/getText', (ctx, next) => testController.getText(ctx, next));
testRouter.get('/getJson', (ctx, next) => testController.getJson(ctx, next));

module.exports = testRouter;
