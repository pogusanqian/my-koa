
module.exports = async (ctx, next) => {
  try {
    await next();
    // 没有code值, 包装成成功响应
    if (!Object.hasOwn(ctx.body, 'code')) {
      ctx.body = responseUtil.success(ctx.body);
    }
  } catch (e) {
    logger.error(e);
    // 设置通用失败响应状态
    ctx.body = responseUtil.fail();
  }
};
