const testRouter = require('koa-router')();
const CanvasController = require('../../controller/BlobController');

testRouter.get('/getImg', ctx => CanvasController.getImg(ctx));

module.exports = testRouter;
