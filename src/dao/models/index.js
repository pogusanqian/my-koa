const { Sequelize } = require('sequelize');
const FSUtil = require('../../util/FSUtil');

const sequelize = new Sequelize(process.env.DB_SCHEMA, process.env.DB_USER, process.env.DB_PASS, {
    host: process.env.DB_HOST,
    port: process.env.DB_PORT,
    dialect: 'mysql',
    timezone: '+08:00',
    logging: false,
    pool: {
        max: 10,
    },
    define: {
        timestamps: false,
    },
});

FSUtil.getFilePathsAtDir(__dirname).filter(item => item !== __filename).forEach(item => require(item)(sequelize));
module.exports = sequelize;
