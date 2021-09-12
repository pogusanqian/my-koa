const { QueryTypes } = require('sequelize');
const sequelize = require('./models');
const SQLUtil = require('../util/SQLUtil');

class DBHubDao {
  static async getdata(tableName) {
    const sql = `SELECT * FROM ${tableName}`;
    return await sequelize.query(sql, { type: QueryTypes.SELECT });
  }

  /**
   *  插入数据, 可以单挑插入, 也可以批量插入;
   * 返回的参数是[f_id, rows], 第一个参数表示的是第一个插入的记录ID, rows表示插入了几条
   * @param tableName
   * @param date
   * @returns {Promise<[unknown[], unknown]>}
   */
  static async insertDate(tableName, date) {
    const sql = `INSERT INTO ${tableName} ${SQLUtil.getInsertSqlFileNames(date)} VALUES ${SQLUtil.getInsertSqlValues(date)}`;
    return await sequelize.query(sql);
  }
}

module.exports = DBHubDao;
