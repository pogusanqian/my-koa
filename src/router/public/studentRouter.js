const StudentRouter = require('koa-router')();
const StudentController = require('../../controller/StudentController');

StudentRouter.get('/getStudent', (ctx, next) => StudentController.getStudent(ctx, next));
StudentRouter.post('/transactionByNoHosting', (ctx, next) => StudentController.transactionByNoHosting(ctx, next));
StudentRouter.post('/transactionByHosting', (ctx, next) => StudentController.transactionByHosting(ctx, next));
StudentRouter.post('/transactionByCLS', (ctx, next) => StudentController.transactionByCLS(ctx, next));
StudentRouter.post('/insertStudent', (ctx, next) => StudentController.insertStudent(ctx, next));
StudentRouter.post('/getStudentByWhereIn', (ctx, next) => StudentController.getStudentByWhereIn(ctx, next));

module.exports = StudentRouter;
