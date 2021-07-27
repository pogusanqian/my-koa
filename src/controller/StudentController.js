const StudentDao = require('../dao/StudentDao');

class StudentController {
  static async getStudent(ctx) {
    ctx.body = await StudentDao.getStudent();
  }

  static async transactionByNoHosting(ctx) {
    ctx.body = await StudentDao.transactionByNoHosting(ctx.request.body);
  }

  static async transactionByHosting(ctx) {
    ctx.body = await StudentDao.transactionByHosting((ctx.request.body));
  }

  static async transactionByCLS(ctx) {
    ctx.body = await StudentDao.transactionByCLS((ctx.request.body));
  }

  static async insertStudent(ctx) {
    ctx.body = await StudentDao.insertStudent((ctx.request.body));
  }

  static async getStudentByWhereIn(ctx) {
    ctx.body = await StudentDao.getStudentByWhereIn((ctx.request.body));
  }
}

module.exports = StudentController;
