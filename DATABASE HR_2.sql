use hr;

-- 1
select max(SALARY), min(SALARY), avg(SALARY) from emp;
select max(COMMISSION), min(COMMISSION), avg(COMMISSION) from emp ;

-- 2
select EMP_ID ,sum(salary), sum(COMMISSION) from emp group by DEPARTMENT ;

-- 3
SELECT count(EMP_FNAM),DEPARTMENT FROM emp group by DEPARTMENT ;

-- 4
SELECT sum(SALARY), DEPARTMENT, DEP_ID FROM EMP GROUP BY DEPARTMENT , DEP_ID ;

-- 5
SELECT EMP_FNAM,EMP_LNAME, COMMISSION  FROM EMP WHERE COMMISSION IS NULL;

-- 6
SELECT EMP_FNAM, EMP_LNAME, DEP_ID, COMMISSION, CASE WHEN COMMISSION = 0 
THEN " NO COMMISSION" ELSE "DONE" END AS PROGRESS FROM EMP ;

-- 7
SELECT EMP_FNAM, EMP_LNAME ,SALARY,COMMISSION, CASE WHEN COMMISSION = 0 THEN "NO COMMISSION" 
ELSE (SALARY * 2)END AS APPRICIATION FROM EMP ;

-- 8
SELECT  distinct EMP_FNAM, DEPARTMENT  FROM EMP ;

-- 9
SELECT SUM(SALARY) , MANAGER FROM EMP GROUP BY MANAGER ;

-- 10
SELECT MANAGER , count(DEPARTMENT) as  total_dep ,count(EMP_FNAM)as  total_emp FROM EMP group by MANAGER ;

-- 11
use hr;
select * from emp  manager, SALARY where EMP_LNAME like "_a" group by manager ;

-- 12
SELECT avg(SALARY),DEP_ID FROM EMP GROUP BY DEP_ID ORDER BY DEP_ID ;

-- 13
SELECT max(SALARY),DEP_ID, DEPARTMENT FROM EMP group by DEPARTMENT;

-- 14
SELECT EMP_FNAM,SALARY,COMMISSION, CASE WHEN COMMISSION IS NOT NULL THEN "SALARY 1O"  ELSE "1" END AS EXTRA FROM EMP;



