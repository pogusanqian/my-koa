const StudentDao = require('../dao/StudentDao');
const YearDao = require('../dao/YearDao');

class TestController {
  static getText(ctx) {
    ctx.body = '你好, 世界';
  }

  static getJson(ctx) {
    // 这里其实可以直接返回一个JSON对象, 然后让koa自动处理, 不用我们手动设置相应类型
    ctx.type = 'application/json';
    ctx.body = JSON.stringify({ name: '张三' });
  }

  static getMyself(ctx) {
    ctx.body = ctx.query;
  }

  static getBody(ctx) {
    ctx.body = ctx.request.body;
  }

  static async getStudents(ctx) {
    ctx.body = await StudentDao.getStudents();
  }

  static async getYears(ctx) {
    ctx.body = await YearDao.getYears();
  }
}

module.exports = TestController;
