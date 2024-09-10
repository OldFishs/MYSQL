#1.写出查看 DEPT 表和 EMP 表的结构的 sq|语句
DESC dept;	
DESC emp;

#3 ．使用简单查询语句完成：
#（ 1 ）显示所有部门名称。
SELECT dname FROM dept;

#（ 2 ）显示所有雇员名及其个年收入 13 月（工资+补助），
#并指定列别名"年收入"
SELECT `name`,(sal + IFNULL(comm,0))*13 AS "年收入" FROM dept;

#4 ，限制查询数据。
#（ 1 ）显示工资超过 2850 的雇员姓名和工资。
#（ 2 ）显示工资不在 1500 到 2850 之间的所有雇员名及工资。
#（ 3 ）显示编号为 7566 的雇员姓名及所在部门编号 
#（ 4 ）显示部门 10 和 30 中工资超过 1500 的雇员名及工资。
#（ 5 ）显示无管理者的雇员名及岗位。
SELECT `name`,sal 
	FROM dept
	WHERE sal > 2850;

SELECT `name`,sal 
	FROM dept
	WHERE sal < 1500 AND sal > 2850;	

SELECT `name`,deptno 
	FROM emp
	WHERE empno = 7566;
	
SELECT `name`,sal 
	FROM emp
	WHERE sal > 1500 AND(bumen = 10 OR bumen =30);
	
SELECT `name`,gangwei
	FROM emp
	WHERE mgr IS NULL;
	
	
#5 ·排序数据。
#（ 1 ）显示在 1991 年 2 月 1 日到 1991 年 5 月 1 日之间
#雇用的雇员名，岗位及雇佣日期，并以雇佣日期进行排序。
#（ 2 ）显示获得补助的所有雇员名，工资及补助，并以工资降序排序
SELECT ename,gangwei,riqi
	FROM emp
	WHERE `data` >= 1991.02.01 AND `data` <= 1991.05.01
	ORDER BY riqi;

SELECT ename,sal,buzhu
	FROM emp
	WHERE buzhu IS NULL 
	ORDER BY buzhu DESC

