const moment = require('moment');
const { v4 } = require('uuid');
const logger = require('../util/logUtil');

module.exports = async (ctx, next) => {
  ctx.requestId = ctx.requestId || v4();
  logger.info(`${ctx.requestId}||请求URL: ${ctx.URL}`);
  logger.info(`${ctx.requestId}||请求方法: ${ctx.method}`);
  logger.info(`${ctx.requestId}||请求头: ${JSON.stringify(ctx.header)}`);
  logger.info(`${ctx.requestId}||请求qeury: ${JSON.stringify(ctx.query)}`);
  logger.info(`${ctx.requestId}||请求Body: ${JSON.stringify(ctx.request.body)}`);

  await next();
  
  logger.info(`${ctx.requestId}||响应参数:  ${JSON.stringify(ctx.body)}`);
};
