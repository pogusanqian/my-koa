const { QueryTypes } = require('sequelize');
const sequelize = require('./models');
const SQLUtil = require('../util/SQLUtil');

class DBHubDao {
  static async getdata(tableName) {
    const sql = `SELECT * FROM ${tableName}`;
    return await sequelize.query(sql, { type: QueryTypes.SELECT });
  }

  /**
   *  插入数据, 可以单条插入, 也可以批量插入;
   * 返回的参数是[f_id, rows], 第一个参数表示的是第一个插入的记录ID(当提供f_id参数时,就是最后一个f_id), rows表示插入了几条
   * @param tableName
   * @param date
   * @returns {Promise<[unknown[], unknown]>}
   */
  static async insertDate(tableName, date) {
    const sql = `INSERT INTO ${tableName} ${SQLUtil.getInsertSqlFileNames(date)} VALUES ${SQLUtil.getInsertSqlValues(date)}`;
    return await sequelize.query(sql);
  }

  /**
   * 根据唯一性约束插入或批量更新数据
   * 注意这里使用ON DUPLICATE KEY UPDATE更新数据时, 同样会使LAST_INSERT_ID自增1, 会造成主键的不连续性, 并没有什么大问题
   * @param tableName
   * @param date
   * @returns {Promise<[undefined, number]>}
   */
  static async insertOrUpdateByDublicateKey(tableName, date) {
    const sql = `INSERT INTO ${tableName} ${SQLUtil.getInsertSqlFileNames(date)}
        VALUES ${SQLUtil.getInsertSqlValues(date)}
        ON DUPLICATE KEY UPDATE ${SQLUtil.getOnUpdateStr(date[0])};`;
    return await sequelize.query(sql);
  }
}

module.exports = DBHubDao;
