class StringUtil {
  /**
   * 驼峰转下划线, schoolId => school_id
   * @param {*} str
   * @returns
   */
  camelTo_(str) {
    return str.replace(/[A-Z]/g, (match) => `_${match.toLowerCase()}`);
  }

  /**
   * 下划线转驼峰, school_id => schoolId
   * @param {*} str
   * @returns
   */
  _ToCamel(str) {
    return str.replace(/_(\w)/g, (match, first) => first.toUpperCase());
  }

  /**
   * 获取字母和数字组成的随机字符串, 长度可以指定
   * @param {*} length
   */
  randomString(length = 8) {
    let randomStr = '';
    const data = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
    for (let i = 0; i < length; i++) {
      randomStr += data.charAt(Math.floor(Math.random() * data.length));
    }
    return randomStr;
  }
}

module.exports = new StringUtil();
