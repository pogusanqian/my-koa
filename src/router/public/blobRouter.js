const testRouter = require('koa-router')();
const CanvasController = require('../../controller/BlobController');

testRouter.get('/getImg', ctx => CanvasController.getImg(ctx));
testRouter.get('/getZip', ctx => CanvasController.getZip(ctx));
testRouter.get('/getQRCodeZip', ctx => CanvasController.getQRCodeZip(ctx));

module.exports = testRouter;
