class TestController {
  static getText(ctx) {
    ctx.body = '你好, 世界';
  }

  static getJson(ctx) {
    // 这里其实可以直接返回一个JSON对象, 然后让koa自动处理, 不用我们手动设置相应类型, 并将对象转换成字符串
    ctx.type = 'application/json';
    ctx.body = JSON.stringify({ name: '张三' });
  }

  static getMyself(ctx) {
    // ctx.query封装的是get的请求参数, koa自动封装的
    ctx.body = ctx.query;
  }

  static getBody(ctx) {
    ctx.body = ctx.request.body;
  }

  static student(ctx) {
    // ctx.params封装的是restful风格的请求参数, 有koa-router封装
    ctx.body = ctx.params;
  }
}

module.exports = TestController;
