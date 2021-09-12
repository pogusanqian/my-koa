const DBHubRouter = require('koa-router')();
const DBHubController = require('../../controller/DBHubController');

DBHubRouter.get('/dbhub/:tableName', ctx => DBHubController.getDate(ctx));
DBHubRouter.post('/dbhub/:tableName', ctx => DBHubController.insertDate(ctx));

module.exports = DBHubRouter;
