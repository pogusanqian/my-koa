const testRouter = require('koa-router')();
const BlobController = require('../../controller/BlobController');

testRouter.get('/getImg', ctx => BlobController.getImg(ctx));
testRouter.get('/getZip', ctx => BlobController.getZip(ctx));
testRouter.get('/getQRCodeZip', ctx => BlobController.getQRCodeZip(ctx));
testRouter.all('/uploadTxtFile', ctx => BlobController.uploadTxtFile(ctx));

module.exports = testRouter;
