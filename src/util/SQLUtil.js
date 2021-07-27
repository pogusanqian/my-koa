class SQLUtil {
  /**
   * 获取in的value值, 主要是用于导入数据时的预导入检查(专门针对唯一性约束)
   * select * from t_student where concat(f_name, f_age, f_sex) in getInValues()
   * @param data
   * @param fieldArr
   * @returns {string}
   */
  static getInValues(data, fieldArr) {
    const result = data.map(item => {
      const arr = [];
      fieldArr.forEach(item2 => arr.push(item[item2]));
      return arr.join('_');
    });
    return `(${JSON.stringify(result).slice(1, -1)})`;
  }

  /**
   * 驼峰转下划线
   * @private
   */
  // eslint-disable-next-line no-underscore-dangle
  static camelTo_(str) {
    return str.replace(/[A-Z]/g, match => `_${match.toLowerCase()}`);
  }

  // eslint-disable-next-line no-underscore-dangle
  static _ToCamel(str) {
    return str.replace(/_(\w)/g, (match, first) => first.toUpperCase());
  }
}

module.exports = SQLUtil;
