## 1. 命名规则

### 1.1 常量命名规则

> * 统一采用大写字符, 如: PORT
> * 使用下划线链接, 如: LOGGER_FILE_PATH

### 1.2 变量命名规则

> * 统一采用驼峰命名法, 如appId, studentName
> * 首字母小写

### 1.3 文件命名规则

> * 统一采用驼峰命名法
> * 如果此文件导出的是一个class静态工具类, 以及构造函数, 则此文件的首字母大写, 如FSUtil
> * 如果此文件导出的是一个普通函数或实例对象, 则此文件的首字母小写, 如loggerUtil

### 1.4 目录命名规则

> * 首字母统一小写
> * 使用短划线分割, 如koa-body

### 1.5 数据库命令规则

> * 库名统一使用`db_`开头, 如db_school
> * 表名统一使用`t_`开头, 如t_student
> * 字段名通过一使用`f_`开头, 如f_name

## 2. DataHub接口

**这些接口都是属于内部接口, 需要传递token才能调用**

### 2.1 Restful路径

> GET: http://localhost:3000/mykoa/dbhub/{tableName}?f_age=23
> POST: http://localhost:3000/mykoa/dbhub/{tableName}
> PUT: http://localhost:3000/mykoa/dbhub/{tableName}/{id}
> DELETE: http://localhost:3000/mykoa/dbhub/{tableName}/{id}

### 2.2 GET请求获取参数

* query参数是where条件, 可以不传

  

