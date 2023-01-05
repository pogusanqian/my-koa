const { status } = require('../config');
const logger = require('../util/logger');

module.exports = async (ctx, next) => {
  try {
    await next();
    // 没有code值, 就进行响应处理
    if (!Object.hasOwn(ctx.body, 'code')) {
      ctx.body = { ...status.SUCCESS, data: ctx.body };
    }
  } catch (e) {
    logger.error(e);
    // 设置通用失败响应状态
    ctx.body = status.FAIL;
  }
};
