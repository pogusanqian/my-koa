require('dotenv').config();

module.exports = {
  dbOptions: {
    database: process.env.DB_SCHEMA,
    username: process.env.DB_USER,
    password: process.env.DB_PASS,
    dialect: 'mysql',
    host: process.env.DB_HOST,
    port: process.env.DB_PORT,
    logging: false,
  },
  options: {
    type: 'js',
    dir: 'src/dao/models',
    camelCase: true,
    tables: ['t_student'],
  },
};
