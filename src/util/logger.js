const log4js = require('log4js');

log4js.configure({
  appenders: {
    consoleOut: {
      type: 'console',
      layout: { type: 'colored' },
    },
    dataFileOut: {
      type: 'dateFile',
      filename: process.env.LOG_FILE_PATH,
      layout: { type: 'colored' },
    },
  },
  categories: {
    default: {
      appenders: ['consoleOut'],
      level: 'info',
    },
    dataFileOut: {
      appenders: ['dataFileOut'],
      level: 'info',
    },
  },
});

module.exports = log4js.getLogger(process.env.LOG_CONSOLE === 'true' ? 'consoleOut' : 'dataFileOut');
