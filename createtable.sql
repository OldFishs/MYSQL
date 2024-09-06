CREATE TABLE `emp`(
	id INT,
	`name` VARCHAR(32),
	sex CHAR(1),
	birthday DATE,
	entry_time DATETIME,
	job VARCHAR(32),
	salary DOUBLE,
	`resume` TEXT) CHARSET utf8 COLLATE utf8_bin ENGINE INNODB;
	
INSERT INTO `emp`
	VALUES(100,'李跃进','男','2000-11-11',
	'2011-11-11 11:11:11','工程师',3000,'打螺丝的'); 
	
	