const { v4 } = require('uuid');
const Stream = require('stream');

module.exports = async (ctx, next) => {
  ctx.requestId = ctx.requestId || v4();
  logger.info(`请求报文 ${ctx.requestId}: ${ctx.method} ${ctx.URL}
${JSON.stringify(ctx.header)}
${!(ctx.body instanceof Stream || Buffer.isBuffer(ctx.body)) && JSON.stringify(ctx.request.body)}`);

  await next();

  // 打印响应报文
  logger.info(`响应报文 ${ctx.requestId}: ${ctx.status}
${JSON.stringify(ctx.response.header)}
${!(ctx.body instanceof Stream || Buffer.isBuffer(ctx.body)) && JSON.stringify(ctx.body)}`);
};
