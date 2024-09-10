#一 1 ，选择部门 30 中的所有员工
#一 2 ，列出所有办事员（ CLERK ）的姓名，编号和部门编号，
#一 3 ，找出佣金高于薪金的员工
#一 4 ，找出佣金高于薪金 60 ％的员工，
#一 5 ，找出部门 10 中所有经理（ MANAGER ）和部门 20 中所有办事员（ CLERK ）的详细资料．

SELECT * 
	FROM dept
	WHERE bumen = 30;

SELECT ename,bianhao,bumenbh
	FROM dept
	WHERE job = clerk;
	
SELECT *
	FROM dept
	WHERE IFNULL(yongjing,0) > xingjing;
	
SELECT *
	FROM dept
	WHERE IFNULL(yongjing,0)  > xingjing * 1.6;
	FROM dept
	WHERE yongjing > xingjing;
	
SELECT *
	FROM dept
	WHERE (bumen = 10 AND zhiwei = jingli) 
	OR (bumen = 20 AND zhiwei = banshiyuan);


#一 6 ．找出部门 10 中所有经理，部门 20 中所有办事员 
#还有既不是经理又不是办事员但其薪金大于或等于 2000 的所有员工的详细资料．

SELECT *
	FROM dept
	WHERE (bumen = 10 AND zhiwei = jingli) 
	OR (bumen = 20 AND zhiwei = banshiyuan)  
	OR (zhiwei != jingli AND zhiwei != banshiyuan AND sal >=2000);


#一一 7 ．找出收取佣金的员工的不同工作，
SELECT DISTINCT job
	FROM dept
	WHERE yongjing IS NOT NULL; 
	
#一一 8 ．找出不收取佣金或收取的佣金低于 100 的员工．
SELECT *
	FROM dept
	WHERE (yongjing IS NULL) OR (IFNULL(yongjing,0) <= 100);
	
#一一 9  ．找出各月倒数第三天受雇的所有员工，
SELECT *
	FROM dept
	WHERE LAST_DAY(ruzhi) -2 == ruzhi
#一一 10 ．找出早于 12 年前受雇的员工．
SELECT *
	FROM dept
	WHERE DATE_ADD(ruzhi,INTERVAL 12 YEAR) < NOW();
#一一 11 ．以首字母小写的方式显示所有员工的姓名·
SELECT CONCAT(LCASE(SUBSTRING(NAME,1,1)),SUBSTRING(NAME,2))	
	FROM dept

#一一 12 ．显示正好为 5 个字符的员工的姓名．

SELECT * 
	FROM dept
	WHERE LENGTH(`name`) = 5;

#一 13 湿示不带有" R "的员工的姓名
SELECT *
	FROM dept
	WHERE NOT LIKE '%R&'
	
#一 14 湿示所有员工姓名的前三个字符．
SELECT LEFT(ename,3)
	FROM dept
	
#一 15 显示所有员工的姓名，用 a 替换所有" A "
SELECT REPLACE(ename,'A','a')
	FROM dept

#一 16 湿示满 10 年服务年限的员工的姓名和受雇日期，
SELECT ename,ruzhi
	FROM dept
	WHERE DATE_ADD(ruzhi,INTERVAL 12 YEAR) >= NOW();
#一 17 湿示员工的详细资料，按姓名排序．
SELECT *
	FROM dept
	ORDER BY ename;
#一 18 湿示员工的姓名和受雇日期，根据其服务年限将最老的员工排在最前面．
SELECT ename,ruzhi
	FROM dept
	ORDER BY ruzhi;
	
#一 19 显示所有员的姓名、工作和薪金，按工作降序排序，若工作相同则按薪金排序．
SELECT ename,`work`,sal
	FROM dept
	ORDER BY `work` DESC,sal;
	
#一 20 ，显示所有员工的姓名、加入公司的年份和月份，按受雇日期所在月排序，
#若月份相同则将最早年的员工排在前面
SELECT ename,CONCAT(YEAR(ruzhi),'--',MONTH(ruzhi))
	FROM dept
	ORDER BY MONTH(ruzhi),YEAR(ruzhi)
	
#一 21 ．显示在一个月为 30 天的情况所有员工的日薪金，忽略余数．
SELECT ename,ROUND(sal /30)
	FROM dept
	ORDER BY MONTH(ruzhi),YEAR(ruzhi)
	
#一 22 ．找出在（任何年份的） 2 月受聘的所有员工。
SELECT *
	FROM dept
	ORDER BY MONTH(ruzhi) = 2
	
#一 23 ．对于每个员工显示其加入公司的天数，
SELECT ename,DATEDIFF(NOW(),ruzhi)
	FROM dept
	
#一 24 ．显小姓名字段的任何位置包含" A "的所有员工的姓名·
SELECT *
	FROM dept
	WHERE ename LIKE '%A%'
	
#一 25 ．以年月日的方式显示所有员工的服务年限．（大概）
SELECT ename,FLOOR(DATEDIFF(NOW(),ruzhi)/365 AS "工作年份"),
	FLOOR((DATEDIFF(NOW(),ruzhi)%365) /31 AS "工作月份"),
	DATEDIFF(NOW(),ruzhi)%31 AS "工作天数",
	FROM dept
	
	
	
	