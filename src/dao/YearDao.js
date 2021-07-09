const { yearModel } = require('./models').models;

class YearDao {
  static async getYears() {
    return await yearModel.findAll();
  }
}

module.exports = YearDao;
