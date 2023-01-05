const cityMapDao = require('../dao/cityMapDao');
const resultUtil = require('../util/resultUtil');

class CityMapController {

  async getCityMapByPage(ctx) {
    const { current, pageSize } = ctx.query;
    const cityMap = {
      offset: (Number(current) - 1) * Number(pageSize) || 0,
      limit: Number(pageSize) || 10,
    };
    const data = await cityMapDao.findAndCountAll(cityMap);
    ctx.body = resultUtil.success(data);
  }

  async deleteCityMapById(ctx) {
    const data = await cityMapDao.deleteById(ctx.request.body.f_id);
    ctx.body = resultUtil.success(data);
  }

  async addCityMap(ctx) {
    const data = await cityMapDao.create(ctx.request.body);
    ctx.body = resultUtil.success(data);
  }

  async updateCityMap(ctx) {
    const data =await cityMapDao.update(ctx.request.body);
    ctx.body = resultUtil.success(data);
  }

}

module.exports = new CityMapController();
