const sequelize = require('./models');
const stringUtil = require('../util/stringUtil');

class DBHubDao {
  getModel(tableName) {
    const model = sequelize.models[`${stringUtil._ToCamel(tableName)}Model`];
    if (!model) throw new ResponseError(`模型名称 ${tableName} 不存在, 请重新填写`);
    return model;
  }

  async create(tableName, data, options) {
    return await this.getModel(tableName).create(data, options);
  }

  async bulkCreate(tableName, data, options) {
    return await this.getModel(tableName).bulkCreate(data, options);
  }

  async findAndCountAll(tableName, options) {
    return await this.getModel(tableName).findAndCountAll(options);
  }

  async findAll(tableName, options) {
    return await this.getModel(tableName).findAll(options);
  }

  async findOne(tableName, options) {
    return await this.getModel(tableName).findOne(options);
  }

  async update(tableName, data, options) {
    return await this.getModel(tableName).update(data, options);
  }

  async destroy(tableName, options) {
    return await this.getModel(tableName).destroy(options);
  }

  async findOneById(tableName, pkValue, pkFileName = 'id') {
    return await this.getModel(tableName).findOne({
      where: {
        [pkFileName]: pkValue
      }
    });
  }

  async updateById(tableName, data, pkValue, pkFileName = 'id') {
    return await this.getModel(tableName).update(data, {
      where: {
        [pkFileName]: pkValue
      }
    });
  }

  async destroyById(tableName, pkValue, pkFileName = 'id') {
    return await this.getModel(tableName).destroy({
      where: {
        [pkFileName]: pkValue
      }
    });
  }
}

module.exports = new DBHubDao();
