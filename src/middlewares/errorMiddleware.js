const resultUtil = require('../util/resultUtil');
const logger = require('../util/logUtil');

module.exports = async (ctx, next) => {
  try {
    await next();
  } catch (e) {
    logger.error(e);
    ctx.body = resultUtil.fail();
    logger.error(`${ctx.requestId}||响应参数:  ${JSON.stringify(ctx.body)}`);
  }
};
