const testRouter = require('koa-router')();
const TestController = require('../../controller/TestController');

testRouter.get('/getText', ctx => TestController.getText(ctx));
testRouter.get('/getJson', ctx => TestController.getJson(ctx));
testRouter.get('/getMyself', ctx => TestController.getMyself(ctx));
testRouter.post('/getBody', ctx => TestController.getBody(ctx));
// 这里单独添加一个rest固定前缀比较好
testRouter.all('/restful/:dataBase/:tableName', ctx => TestController.student(ctx));
testRouter.get('/syncError', ctx => TestController.syncError(ctx));
testRouter.get('/asyncErrorAtPromise', ctx => TestController.asyncErrorAtPromise(ctx));
testRouter.get('/asyncErrorAtSetTimeOut', ctx => TestController.asyncErrorAtSetTimeOut(ctx));

module.exports = testRouter;
