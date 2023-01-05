const dbHubRouter = require('koa-router')();
const dbHubController = require('../../controller/dbHubController');

dbHubRouter.all('/dbhub/doSQL', ctx => dbHubController.doSQL(ctx));
dbHubRouter.get('/dbhub/:tableName', ctx => dbHubController.getDate(ctx));
dbHubRouter.post('/dbhub/:tableName', ctx => dbHubController.insertDate(ctx));
dbHubRouter.post('/dbhub/:tableName/insertOrUpdateByDublicateKey', ctx => dbHubController.insertOrUpdateByDublicateKey(ctx));

module.exports = dbHubRouter;
