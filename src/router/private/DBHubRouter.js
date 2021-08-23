const DBHubRouter = require('koa-router')();
const DBHubController = require('../../controller/DBHubController');

DBHubRouter.get('/dbhub/:tableName', ctx => DBHubController.getDate(ctx));

module.exports = DBHubRouter;
