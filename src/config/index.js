const defaultConfig = require('./default');
const productionConfig = require('./production');

if (process.env.NODE_ENV === 'production') {
  module.exports = productionConfig;
} else {
  module.exports = defaultConfig;
}
