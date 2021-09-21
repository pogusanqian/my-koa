const fs = require('fs');

class BlobController {
  static async getImg(ctx) {
    //  获取图片资源, 这种静态资源依然会打印日志
    const img = fs.readFileSync('./src/static/imgs/最终结果.png');
    ctx.type = 'image/png';
    ctx.body = img;
  }
}

module.exports = BlobController;
