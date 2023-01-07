const { state } = require('../config');

class ResponseUtil {

  /**
   * 设置响应
   * @param {*} code 
   * @param {*} msg 
   * @param {*} data 
   * @returns 
   */
  setResponse(code, msg, data) {
    return { code, msg, data };
  }

  /**
   * 成功响应
   * @param {*} data 
   * @returns 
   */
  success(data) {
    return { ...state.SUCCESS, data };
  }

  /**
   * 失败响应
   * @param {*} data 
   * @returns 
   */
  fail() {
    return state.FAIL;
  }

  /**
   * 没有权限响应
   * @returns 
   */
  notAuth() {
    return state.NO_AUTH;
  }
}

module.exports = new ResponseUtil();
