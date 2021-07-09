const { studentModel: studentDao } = require('./models').models;

class StudentDao {
  static async getStudents() {
    return await studentDao.findAll();
  }
}

module.exports = StudentDao;
