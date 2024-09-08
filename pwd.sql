#加密和系统函数
#user() 查询用户
SELECT USER() FROM DUAL;#用户ip地址

#database() 查询数据库名称
SELECT DATABASE();
#md5（str）为字符串算出md5 32的字符串，加密
SELECT MD5('root')FROM DUAL;
	
CREATE TABLE `xxx_user`(
	id INT,
	`name` VARCHAR(32) NOT NULL DEFAULT '',
	pwd CHAR(32) NOT NULL DEFAULT '');
	
INSERT INTO xxx_user
	VALUES(100,'王兄安',MD5('123456'));	
	
SELECT * FROM xxx_user;
SELECT * FROM xxx_user WHERE `name` = '王兄安' AND pwd = MD5('123456');



#流程控制语句
#if(a,b,c)a为true返回b否则c
SELECT IF(TRUE , 'biejing','shanghai') FROM DUAL;
#ifnull(a,b)如果a不为空则a，否则b


SELECT * FROM employee
	ORDER BY employee DESC
	LIMIT 0,5
	
SELECT * FROM employee
	ORDER BY employee DESC
	LIMIT 20,5