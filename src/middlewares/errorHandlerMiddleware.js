const { status } = require('../config');
const logger = require('../util/logUtil');

module.exports = async (ctx, next) => {
  try {
    await next();
  } catch (e) {
    logger.error(`${ctx.requestId}||响应参数:  ${JSON.stringify(ctx.body)}`);
    ctx.body = status.COMMEN_ERROR;
  }
};
