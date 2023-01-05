const dbHubDao = require('../dao/dbHubDao');

/**
 * DBHub接口可以实现通用表的增删改查
 */
class DBHubController {
  async getDate(ctx) {
    const { tableName } = ctx.params;
    ctx.body = await dbHubDao.getdata(tableName);
  }

  async insertDate(ctx) {
    const { tableName } = ctx.params;
    const data = ctx.request.body;
    ctx.body = await dbHubDao.insertDate(tableName, data);
  }

  async insertOrUpdateByDublicateKey(ctx) {
    const { tableName } = ctx.params;
    const data = ctx.request.body;
    ctx.body = await dbHubDao.insertOrUpdateByDublicateKey(tableName, data);
  }
}

module.exports = new DBHubController();
