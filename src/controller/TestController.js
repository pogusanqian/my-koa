const axios = require('axios');
const Cookie = require('cookie');

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

  static resetful(ctx) {
    // ctx.params封装的是restful风格的请求参数, 有koa-router封装
    ctx.body = ctx.params;
  }

  static syncError(ctx) {
    // 这里的同步异常并不会将服务器搞挂, 反而会触发error事件
    // 如果启动了loggerMiddleware组件(try...catch), 则error事件都不会触发
    // eslint-disable-next-line no-undef
    str = '张三';
    ctx.body = '好好学习, 天天向上';
  }

  static async asyncErrorAtPromise(ctx) {
    // 这里promise抛出异步异常没有触发error事件, 这种异步异常并不会导致我们的服务器挂掉;
    // 可以这么理解promise是单独开了另一个线程, promies线程挂掉了, 但是主线程并没有挂掉
    axios.get('http://www.kkkk.coddk.com');
    ctx.body = '你好世界';
  }

  static asyncErrorAtSetTimeOut(ctx) {
    // 这里抛出的异步异常, 如果不做处理的话, 会把整个服务器都搞挂的, 定时器和promise这种异步是不一样的
    setTimeout(() => {
      throw Error('定时器中的异步异常');
    });
    ctx.body = '异步异常';
  }

  static setCookie(ctx) {
    ctx.cookies.set('ck1', 'aaa');
    ctx.body = '设置cookie成功';
  }

  static getCookie(ctx) {
    // 单独获取一个ck1, 并不能获取所有的cookie
    const ck1 = ctx.cookies.get('ck1');
    console.log(`ck1: ${ck1}`);
    // 从请求头中获取cookies字符串报文, 然后在使用cookie模块, 序列化成对象;
    // 注意koa内嵌的时cookies模块, 是不能一次性获取所有的cookie; 其实在项目中也不会一次性获取所有的cookie, koa内置的cookies模块就够了
    console.log(ctx.headers.cookie);
    const cookies = Cookie.parse(ctx.headers.cookie);
    ctx.body = cookies;
  }

  static locationBaidu(ctx) {
    // 默认的重定向时302
    ctx.status = 301;
    ctx.redirect('https://baidu.com');
    ctx.body = '一会重定向到百度';
  }
}

module.exports = TestController;
