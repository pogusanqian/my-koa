const StudentDao = require('../dao/StudentDao');

class StudentController {
  static async getStudent(ctx) {
    ctx.body = await StudentDao.getStudent();
  }

  /**
   * 异步获取学生信息, 这种写法客户端获取不到任何信息的, ctx是一个全局的上下文
   * A请求不用ctx, 便会被B请求获取ctx上下文
   * @param {*} ctx 
   */
  static getStudentSync(ctx) {
    StudentDao.getStudent()
      .then(data => {
        console.log("data:==========", data)
        ctx.body = data;
      }).catch(err => {
        console.error(err);
      });
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
