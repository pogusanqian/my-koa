// const moment = require('moment');
const logger = require('../util/logUtil');

module.exports = async (ctx, next) => {
  logger.info(`${ctx.requestId}||请求Parms: ${JSON.stringify(ctx.query)}||请求Body: ${JSON.stringify(ctx.request.body)}`);
  await next();
  logger.info(`${ctx.requestId}||响应参数: ${JSON.stringify(ctx.body)}`);
};
