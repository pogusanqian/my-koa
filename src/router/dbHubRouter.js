const dbHubRouter = require('koa-router')();
const dbHubController = require('../controller/dbHubController');

dbHubRouter.prefix('/dbhub');
dbHubRouter.post('/:tableName', (ctx) => dbHubController.create(ctx));
dbHubRouter.get('/:tableName', (ctx) => dbHubController.queryLimitPage(ctx));
dbHubRouter.get('/:tableName/:id', (ctx) => dbHubController.queryById(ctx));
dbHubRouter.put('/:tableName/:id', (ctx) => dbHubController.updateById(ctx));
dbHubRouter.delete('/:tableName/:id', (ctx) => dbHubController.destroyById(ctx));

module.exports = dbHubRouter;
