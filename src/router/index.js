const router = new require('koa-router')();
const FSUtil = require('../util/FSUtil');

// 设置router的前缀
router.prefix('/pogu/mykoa');

// 加载所有的子路由
FSUtil.getFilePathsAtDir(__dirname).forEach(item => {
  if (!item.endsWith('index.js'))
    router.use(require(item).routes());
})

module.exports = router;
