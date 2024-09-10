#视图使用

#创建视图
CREATE VIEW emp_view01
	AS 
	SELECT user_name,salary,job FROM employee;


#查看视图
DESC emp_view01;

SELECT * FROM emp_view01;


#修改视图

UPDATE emp_view01
	SET job = 'man'
	WHERE user_name = '李跃进';

#查看创建视图的指令
SHOW CREATE VIEW emp_view01;
#删除视图
DROP VIEW emp_view01;

#视图中可以使用视图	