const DBHubDao = require('../dao/DBHubDao');

class DBHubController {
  static async getDate(ctx) {
    const { tableName } = ctx.params;
    ctx.body = await DBHubDao.getdata(tableName);
  }
}

module.exports = DBHubController;
