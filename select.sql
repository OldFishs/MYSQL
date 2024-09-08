#select学习
CREATE TABLE student(
	id INT NOT NULL DEFAULT 1,
	NAME VARCHAR(20) NOT NULL DEFAULT '',
	chinese FLOAT NOT NULL DEFAULT 0.0,
	english FLOAT NOT NULL DEFAULT 0.0,
	math FLOAT NOT NULL DEFAULT 0.0
);

INSERT INTO student(id,NAME,chinese,english,math) VALUES(1,'xxx',89,78,90);
INSERT INTO student(id,NAME,chinese,english,math) VALUES(2,'张飞',67,98,56);
INSERT INTO student(id,NAME,chinese,english,math) VALUES(3,'宋江',87,78,77);
INSERT INTO student(id,NAME,chinese,english,math) VALUES(4,'关羽',88,98,90);
INSERT INTO student(id,NAME,chinese,english,math) VALUES(5,'赵云',82,84,67);
INSERT INTO student(id,NAME,chinese,english,math) VALUES(6,'欧阳锋',55,85,45);
INSERT INTO student(id,NAME,chinese,english,math) VALUES(7,'黄蓉',75,65,30);
INSERT INTO student(id,NAME,chinese,english,math) VALUES(8,'韩信',45,65,99);

#查所有学生信息
SELECT * FROM student;
#查所有学生姓名和对应英语成绩
SELECT `name`,english FROM student;
#过滤重复数据
SELECT DISTINCT english FROM student;
#每个字段都相同才去重
SELECT DISTINCT `name`,english FROM student;


#查询每个学生的总分
SELECT `name`,(chinese+english+math) FROM student;
#查询每个学生的总分+10
SELECT `name`,(chinese+english+math)+10 FROM student;
#使用别名表示学生分数
SELECT `name`,(chinese+english+math)+10 AS total_score FROM student;

SELECT `name` AS '名字',(chinese+english+math)+10 '总分' FROM student;	

#查姓名为赵云的学生
SELECT * FROM student WHERE `name` = '赵云';

#查询英语成绩大于90的学生
SELECT * FROM student WHERE english > 90;
#查询总分大于200的学生
SELECT * FROM student WHERE (chinese + english + math) > 200;

#查询 math 大于 60 并且 (and) id 大于 90 的学生成绩
SELECT * FROM student WHERE math > 60 AND id > 90 ;

#查询英语成绩大于语文成绩的同学
SELECT * FROM student WHERE english > chinese;
#查询总分大于 200 分并且数学成绩小于语文成绩，的姓韩的学生，
SELECT * FROM student WHERE (chinese + english + math) > 200 AND math < chinese 
AND `name` LIKE '张%';


#查询英语分数在 80 - 90 之间的同学。
#查询数学分数为 89 ， 90 ， 91 的同学。
#查询所有姓李的学生成绩。
#查询数学分> 80 语文分> 80 的同学。
SELECT * FROM student WHERE english > 80 AND english < 90;
SELECT * FROM student WHERE math = 89 OR math = 90 OR math = 91;
SELECT * FROM student WHERE `name` LIKE '张%'; 
SELECT * FROM student WHERE math > 80 AND chinese > 80;

#查询语文分数在 70 - 80 之间的同学
#查询总分为 189 ， 190 ， 191 的同学
#查询所有姓李或者姓宋的学生成绩
#查询数学比语文多 30 分的同学。
SELECT * FROM student WHERE chinese > 70 AND chinese < 80;
SELECT * FROM student WHERE (chinese + math + english) = 189 
	OR (chinese + math + english) = 190 OR (chinese + math + english) = 191;
SELECT * FROM student WHERE `name` LIKE '李%' OR `name` LIKE '宋%';
SELECT * FROM student WHERE (math - chinese) > 30;

#order by 使用
#对数学成绩排序后输出〖升序〗。
SELECT * FROM student
ORDER BY math;

#对总分按从高到低的顺序输出
SELECT `name`,(chinese + math + english) AS total FROM student ORDER BY total DESC;
#对姓李的学生成绩排序输出（升序）
SELECT `name`,(chinese + math + english) AS total
 FROM student WHERE `name` LIKE '张%'
 ORDER BY total;



#count的使用
#统计一个班级共有多少学生？
SELECT COUNT(*) FROM student;
#统计数学成绩大于 90 的学生有多少个？
SELECT COUNT(*) FROM student WHERE math > 90;
#统计总分大于 250 的人数有多少？
SELECT COUNT(*) FROM student WHERE (math + chinese + math) > 250;	
#count(*) 和 count(列）的区别
#(*)返回满足条件的记录行数 （列）返回满足条件的某列排除null

CREATE TABLE t15(
	`name` VARCHAR(20));
INSERT INTO t15 VALUES('吃饭时间');
INSERT INTO t15 VALUES('休息时间');
INSERT INTO t15 VALUES(NULL);

SELECT COUNT(*) FROM t15;
SELECT COUNT(`name`) FROM t15;



#sum的使用
#统计一个班级数学总成绩？
SELECT SUM(math) FROM student;
#统计一个班级语文、英语、数学各科的总成绩
SELECT SUM(math) AS math ,SUM(english) AS english,SUM(chinese) AS english FROM student;
#统计一个班级语文、英语、数学的成绩总和
SELECT SUM(math + chinese + english) AS total FROM student;
#统计一个班级语文成绩平均分
SELECT SUM(chinese)/COUNT(*) FROM student;


#avg的使用
#数学平均分
SELECT AVG(math) FROM student ;
#总分平均分
SELECT AVG(math + chinese + english) FROM student;


#max使用min使用
SELECT MAX(math) ,MIN(math) FROM student;



