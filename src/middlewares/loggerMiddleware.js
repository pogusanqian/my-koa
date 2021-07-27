// const moment = require('moment');
const { v4 } = require('uuid');
const logger = require('../util/logUtil');

module.exports = async (ctx, next) => {
  // TODO 这里的UUID是暂时的, 后期要放到请求头中
  ctx.requestId = v4();
  logger.info(`${ctx.requestId}||请求Parms: ${JSON.stringify(ctx.query)}||请求Body: ${JSON.stringify(ctx.request.body)}`);
  try { // TODO 异步的异常这里是抓不到的, 后期需要专门抓异步异常打印日志
    await next();
  } catch (e) {
    ctx.body = {
      code: -1,
      message: e.message,
    };
    logger.error(`${ctx.requestId}||错误信息: ${e.stack}`);
  }
  logger.info(`${ctx.requestId}||响应参数: ${JSON.stringify(ctx.body)}`);
};
