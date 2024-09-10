#创建新用户
CREATE USER 'xxx_edu'@'localhost' IDENTIFIED BY '123456'


SELECT * FROM 
	mysql.user;
DELETE FROM mysql.user WHERE USER = 'xxx_edu';
FLUSH PRIVILEGES;
	
