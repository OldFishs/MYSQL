#数据库操作
#创建一个名称为xxx_db01的数据库。[图形化和指令演示]
#指令创建数据库
CREATE DATABASE XXX_db01

CREATE DATABASE XXX_db02 CHARACTER SET utf8

CREATE DATABASE XXX_db03 CHARACTER SET utf8 COLLATE utf8_bin
#删除数据库
DROP DATABASE xxx_db01

#创建一个使用 utf8 字符集的xxx_db02 数据库
#创建一个使用 utf8 字符集，并带校对规则的xxx_db03数据库

SELECT * FROM t2 WHERE NAME = 'tom'