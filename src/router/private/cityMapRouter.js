const studentRouter = require('koa-router')();
const cityMapController = require('../../controller/cityMapController');

studentRouter.get('/getCityMapByPage', ctx => cityMapController.getCityMapByPage(ctx));
studentRouter.post('/deleteCityMapById', ctx => cityMapController.deleteCityMapById(ctx));
studentRouter.post('/addCityMap', ctx => cityMapController.addCityMap(ctx));
studentRouter.post('/updateCityMap', ctx => cityMapController.updateCityMap(ctx));

module.exports = studentRouter;
