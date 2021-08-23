const { QueryTypes } = require('sequelize');
const sequelize = require('./models');

class DBHubDao {
  static async getdata(tableName) {
    const sql = `SELECT * FROM ${tableName}`;
    return await sequelize.query(sql, { type: QueryTypes.SELECT });
  }
}

module.exports = DBHubDao;
