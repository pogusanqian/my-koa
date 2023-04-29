const dbHubDao = require('../dao/dbHubDao');
const { Op } = require('sequelize');

class DBHubController {
  async create(ctx) {
    ctx.body = await dbHubDao.create(ctx.params.tableName, ctx.request.body);
  }

  async queryLimitPage(ctx) {
    const tableName = ctx.params.tableName;

    // 分页字段
    const page = Number(ctx.query.page || 1);
    const pageSize = Number(ctx.query.pageSize || 10);

    // 查询字段
    const where = Object.keys(ctx.query).reduce((prex, item) => {
      const value = ctx.query[item];
      if (!['page', 'pageSize', '_sort'].includes(item)) {
        if (item.endsWith(':contains')) {
          prex[item.slice(0, -9)] = { [Op.like]: `%${value}%` };
        } else {
          prex[item] = { [Op.eq]: value };
        }
      }
      return prex;
    }, {});

    // 排序字段
    const order = (ctx.query._sort?.split(',') || []).reduce((prex, item) => {
      item = item.trim();
      prex.push(item.startsWith('-') ? [item.slice(1), 'DESC'] : [item, 'ASC']);
      return prex;
    }, []);

    const queryParams = {
      where,
      order,
      offset: (page - 1) * pageSize,
      limit: pageSize
    };

    ctx.body = await dbHubDao.findAndCountAll(tableName, queryParams);
  }

  async queryById(ctx) {
    ctx.body = await dbHubDao.findOne(ctx.params.tableName, { where: { id: ctx.params.id } });
  }

  async updateById(ctx) {
    ctx.body = await dbHubDao.update(ctx.params.tableName, ctx.request.body, { where: { id: ctx.params.id } });
  }

  async destroyById(ctx) {
    ctx.body = await dbHubDao.destroy(ctx.params.tableName, { where: { id: ctx.params.id } });
  }
}

module.exports = new DBHubController();
