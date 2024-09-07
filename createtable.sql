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


#修改表
#添加列
ALTER TABLE `emp`
ADD	image VARCHAR(32) NOT NULL DEFAULT '' AFTER RESUME;

#查询表的结构
DESC emp;
DESC employee;

#修改列	job长度60
ALTER TABLE `emp`
MODIFY job VARCHAR(60) NOT NULL DEFAULT '' AFTER RESUME;

#删除列
ALTER TABLE `emp`
DROP sex;

#改表名
RENAME TABLE emp TO employee;

#修改表的字符集utf8
ALTER TABLE employee CHARACTER SET utf8;

#修改列名name为 user_name
ALTER TABLE employee CHANGE `name` user_name VARCHAR(64) NOT NULL DEFAULT''



#创建商品表
CREATE TABLE `goods`(
	id INT,
	goods_name VARCHAR(10),
	price DOUBLE);


#添加数据
INSERT INTO goods(id,goods_name,price)
VALUES(10,'牙膏',10000);

SELECT * FROM goods;

INSERT INTO goods(id,goods_name,price)
VALUES(12,'牙刷',2000);

#insert 注意事项
#数值类型要相同，长度在规定范围，注意单引号，列可以插入空值（字符段允许空
#可以一次加多列，给表所有字段添加数据可以不写字段名称，
#不写添加默认值，默认值在创建表时添加


#修改表薪水为5000
UPDATE	employee SET salary = 5000;

SELECT * FROM employee;

#修改李跃进的薪水为7000

UPDATE	employee SET salary = 7000 WHERE user_name = '李跃进' ;

INSERT INTO employee VALUES(200,'张文革','2111-11-11'
,'2333-08-09 09:09:09',9000,'监督打螺丝的','监督员','666');

#张薪水增加一千
UPDATE employee
	SET salary = salary + 1000;
	WHERE user_name = '张文革';
	
DELETE FROM employee
	WHERE user_name = '张文革';
	
SELECT * FROM employee;

	