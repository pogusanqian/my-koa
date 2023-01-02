const DBHubDao = require('../dao/DBHubDao');

/**
 * DBHub接口可以实现通用表的增删改查
 */
class DBHubController {
  static async getDate(ctx) {
    const { tableName } = ctx.params;
    ctx.body = await DBHubDao.getdata(tableName);
  }

  static async insertDate(ctx) {
    const { tableName } = ctx.params;
    const data = ctx.request.body;
    ctx.body = await DBHubDao.insertDate(tableName, data);
  }

  static async insertOrUpdateByDublicateKey(ctx) {
    const { tableName } = ctx.params;
    const data = ctx.request.body;
    ctx.body = await DBHubDao.insertOrUpdateByDublicateKey(tableName, data);
  }
}

module.exports = DBHubController;
