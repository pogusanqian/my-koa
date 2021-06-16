class TestController {

  getText(ctx) {
    ctx.body = '你好, 世界'
  }

  getJson(ctx) {
    // 这里其实可以直接返回一个JSON对象, 然后让koa自动处理, 不用我们手动设置相应类型
    ctx.type = 'application/json';
    ctx.body = JSON.stringify({name: '张三'});
  }
}

module.exports = new TestController();
