const cityMapDao = require('../dao/cityMapDao');

class CityMapController {

  async getCityMapByPage(ctx) {
    const { current, pageSize } = ctx.query;
    const cityMap = {
      offset: (Number(current) - 1) * Number(pageSize) || 0,
      limit: Number(pageSize) || 10,
    };
    ctx.body = await cityMapDao.findAndCountAll(cityMap);
  }

  async deleteCityMapById(ctx) {
    ctx.body = await cityMapDao.deleteById(ctx.request.body.f_id);
  }

  async addCityMap(ctx) {
    ctx.body = await cityMapDao.create(ctx.request.body);
  }

  async updateCityMap(ctx) {
    ctx.body =await cityMapDao.update(ctx.request.body);
  }

}

module.exports = new CityMapController();
