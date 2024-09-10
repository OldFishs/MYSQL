#（ 1 ）·列出至少有一个员工的所有部门
SELECT COUNT(*),bumen
	FROM dept
	GROUP BY bumen
	HAVING COUNT(*) > 1

#（ 2 ）·列出薪金比 "SMITH" 多的所有员工。
SELECT ename 
	FROM dept
	WHERE sal > (SELECT sal
			FROM dept
			WHERE ename = "smith")
			
#（ 3 ）·列出受雇日期晚于其直接上级的所有员工。
#dept当作两张表
SELECT * 
	FROM dept worker,dept leader 
	WHERE worker.ruzhi > leader.ruzhi 
	AND worker.shangji = leader.xiashu
		
#（ 4 ）·列出部门名称和这些部门的员工信息，同时列出那些没有员工的部门。
SELECT dname,emp.*
	FROM dept
	LEFT JOIN emp ON dept.ruzhi = emp.ruzhi

#（ 5 ）·列出所有 "CLERK" （办事员）的姓名及其部门名称。
SELECT ename,dname
	FROM dept,emp
	WHERE job = clerk AND emp.ruzhi = dept.ruzhi
	
#（ 6 ）·列出最低薪金大于 1500 的各种工作。
SELECT MIN(sal),job
	FROM emp
	GROUP BY job
	HAVING MIN(sal) > 1500
#（ 7 ）·列出在部门 "SALES" （销售部）工作的员工的姓名。
SELECT ename
	FROM dept,emp
	WHERE dept.ruzhi = emp.ruzhi AND bumen = 'sales'
	

#（ 8 ）·列出薪金高于公司平均薪金的所有员工。
SELECT *
	FROM emp
	WHERE sal > (SELECT AVG(sal)
			FROM emp)
#（ 9 ）·列出与“ scott“从事相同工作的所有员工。
SELECT *
	FROM emp
	WHERE `work` = (SELECT `work`
				FROM emp
				WHERE ename = "scott")
				AND ename != "scott"
				
#（ 10 ）·列出薪金高于在部门 30 工作的所有员工的薪金的员工姓名和薪金。
SELECT ename,sal
	FROM emp
	WHERE sal > (SELECT MAX(sal)
			FROM emp
			WHERE WORK = 30	

#（ 11 ）·列出在每个部门工作的员工数量、平均工资和平均服务期限。
SELECT COUNT(*),AVG(sal),FORMAT(AVG(DATEDIFF(NOW(),ruzhi)),2)
	FROM emp
	GROUP BY bumen

#（ 12 ）·列出所有员工的姓名、部门名称和工资。
,,,

#（ 13 ）·列出所有部门的详细信息和部门人数。
SELECT *	
	FROM dept,(SELECT COUNT(*),bumen
		FROM emp
		GROUP BY bumen) AS renshu
	WHERE dept.bumen = renshu.bumen
	
#（ 14 ）·列出各种工作的最低工资。
SELECT MIN(sal),job
	FROM emp
	GROUP BY job
	
#（ 15 ）·列出 MANAGER （经理）的最低薪金。
SELECT MIN(sal)
	FROM emp
	WHERE job = 'manager'
#（ 16 ）·列出所有员工的年工资，按年薪从低到高排序。
SELECT ename,(sal + IFNULL(comm,0)) * 12 AS 'year'
	FROM emp
	ORDER BY 'year'