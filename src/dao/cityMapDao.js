const sequelize = require('./models');

const { cityMapModel } = sequelize.models;

class CityMapDao {

  async findAndCountAll(cityMap) {
    return await cityMapModel.findAndCountAll({
      offset: cityMap.offset,
      limit: cityMap.limit,
    });
  }

  async deleteById(id) {
    return await cityMapModel.destroy({ where: { f_id: id } });
  }

  async create(cityMap) {
    return await cityMapModel.create(cityMap);
  }

  async update(cityMap) {
    return await cityMapModel.update(cityMap, { where: { f_id: cityMap.f_id } });
  }
}

module.exports = new CityMapDao();
