#创建一张订单表order（id号，商品名，订购人，数量）·要求 id 号为主键，请使用三种方式来创建主键·
#（提示．为练习方便，可以是orderl,order2,order3 ）
CREATE TABLE t16(
	id INT PRIMARY KEY,
	`goods` VARCHAR(32),
	`name` VARCHAR(32),
	number VARCHAR(32));
	
	
#1
SHOW INDEX FROM t16;
#2
SHOW INDEXES FROM t16;
#3
SHOW KEYS FROM t16;
#4
DESC t16;



#创建一张特价菜谱表 menu(id号，菜谱名，厨师，点餐人身份证，价格）·
#要求 id 号为主键，点餐人身份证是 unique 请使用两种方式来创建unique.
#( 提示：为练习方便，可以 æmenul ， menu2

CREATE TABLE t17(
	id INT PRIMARY KEY,
	`name` VARCHAR(32),
	cook VARCHAR(32),
	idcard VARCHAR(32),
	price VARCHAR(32));
	
CREATE UNIQUE INDEX id_key ON t17(id);	
ALTER INDEX id_key ON t17(id);
ALTER TABLE t25 ADD INDEX id_key(id);