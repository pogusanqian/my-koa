const { CODE } = require('../config');

module.exports = async (ctx, next) => {
  try {
    await next();
    ctx.body = {
      code: CODE.SUCCESS.code,
      message: CODE.SUCCESS.message,
      data: ctx.body
    };
  } catch (e) {
    const isKoaError = Number.isInteger(e.status) && Number(e.status) >= 100 && Number(e.status) <= 999;
    if (isKoaError) {
      // ctx.throw抛出的异常, 不做处理, 转交给koa处理
      throw e;
    } else if (e instanceof ResponseError) {
      // 处理自定义返回给前端的异常
      ctx.body = { code: e.code, message: e.message };
    } else {
      // 隐藏未知异常, 只返回一个通用的状态码信息
      logger.error(e);
      ctx.body = CODE.FAIL;
    }
  }
};
