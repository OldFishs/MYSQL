#演示删除和查询数据库
#查看当前数据库服务器中的所有数据库
SHOW DATABASES
#查看前面创建的xxx_db01数据库的定义信息
SHOW CREATE DATABASE xxx_db01
#创建数据库时为规避关键字，可使用反引号
CREATE DATABASE `create`
#删除前面创建的xxx_db01数据库
DROP DATABASE xxx_db01

#练习homework1备份xxx_0203信息并恢复

#备份（dos 下执行mysqldump在bin\目录下
mysqldump -u root -p -B xxx_db02 xxx_db03 > d:\\bak.sql

DROP DATABASE xxx_db02
`test1`

#恢复
SOURCE 文件名.sql

#指令创建表
CREATE TABLE `user`(
	id INT,
	`name` VARCHAR(255),
	`password` VARCHAR(255),
	`birthday` DATE)
CREATE TABLE t3(
	id TINYINT)
	
INSERT INTO `t3` VALUE (127);


CREATE TABLE t14(
	birthday DATE,
	job_time DATETIME,
	login_time TIMESTAMP)
	
SELECT * FROM t14;

