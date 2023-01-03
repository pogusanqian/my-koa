require('dotenv').config({ path: '../.env' });

module.exports = {
  dbOptions: {
    database: process.env.DB_SCHEMA,
    username: process.env.DB_USER,
    password: process.env.DB_PASS,
    dialect: 'mysql',
    host: process.env.DB_HOST,
    port: process.env.DB_PORT,
    logging: true,
  },
  options: {
    type: 'js',
    dir: 'models',
    camelCase: false,
    tables: ['t_city_map', 't_province_map'],
  },
};
