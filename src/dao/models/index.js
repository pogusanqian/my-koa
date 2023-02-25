const { Sequelize } = require('sequelize');
const cls = require('cls-hooked');
const fsUtil = require('../../util/fsUtil');

Sequelize.useCLS(cls.createNamespace('myNameSpace'));

const { DB_SCHEMA, DB_USER, DB_PASS, DB_HOST, DB_PORT } = process.env;
const sequelize = new Sequelize(DB_SCHEMA, DB_USER, DB_PASS, {
  host: DB_HOST,
  port: DB_PORT,
  dialect: 'mysql',
  timezone: '+08:00',
  logging: false,
  query: { raw: true },
  define: { timestamps: false },
  pool: {
    min: 3,
    max: 10,
    idle: 1000 * 60
  },
  // 将查询出来的国际标准时间转换成东八区时间, dateStrings, typeCast缺一不可
  dialectOptions: {
    dateStrings: true,
    typeCast: true
  }
});

// 动态加载模型
fsUtil
  .getFilePathsAtDir(__dirname)
  .filter((item) => item !== __filename)
  .forEach((item) => require(item)(sequelize));
module.exports = sequelize;
