const { status } = require('../config');

class ResposeUtil {

  /**
   * 设置响应状态
   * @param {*} code 
   * @param {*} msg 
   * @param {*} data 
   * @returns 
   */
  setResult(code, msg, data) {
    return { code, msg, data };
  }

  /**
   * 成功响应
   * @param {*} data 
   * @returns 
   */
  success(data) {
    return {
      code: status.SUCCESS.code,
      msg: status.SUCCESS.msg,
      data: data
    };
  }

  /**
   * 通用错误响应
   * @returns 
   */
  fail() {
    return {
      code: status.FAIL.code,
      msg: status.FAIL.msg
    };
  }
}

module.exports = new ResposeUtil();
