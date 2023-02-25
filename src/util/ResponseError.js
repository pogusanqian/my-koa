// 此类异常信息可以直接返回给前端
class ResponseError extends Error {
  constructor(message, code = -1) {
    super();
    this.code = code;
    this.message = message;
  }
}

module.exports = ResponseError;
