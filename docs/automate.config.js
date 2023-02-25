require('dotenv').config({ path: '../.env' });

module.exports = {
  dbOptions: {
    database: process.env.DB_SCHEMA,
    username: process.env.DB_USER,
    password: process.env.DB_PASS,
    dialect: 'mysql',
    host: process.env.DB_HOST,
    port: process.env.DB_PORT,
    logging: true
  },
  options: {
    type: 'js',
    dir: '/Code/study/my-koa/src/dao/models',
    camelCase: true,
    fileNameCamelCase: true,
    tables: ['province_map', 'city_map', 'district_map']
  }
};
