USE HR;


-- 1
SELECT EMP_LNAME , H_DATE, DEPARTMENT  FROM EMP WHERE DEPARTMENT = "SALES" ;

-- 2 
SELECT EMP_ID, EMP_LNAME FROM EMP WHERE avg(SALARY)< SALARY ORDER BY SALARY ;

-- 3
SELECT EMP_ID,EMP_LNAME,DEPARTMENT from emp where EMP_LNAME like "%u%" ; 

-- 4
select EMP_FNAM,DEPARTMENT, DEP_ID from emp where LOCATION  = "surat" ;

-- 5 
select EMP_LNAME, salary , manager from emp where MANAGER =  "sanjay" ;

-- 6
select DEP_ID, EMP_LNAME, EMP_ID , department from emp where DEPARTMENT = "sales" ;

-- 7
select EMP_ID, EMP_LNAME, salary, department from emp
 where (avg(salary) > salary ) and EMP_FNAM like "%u% " ;
 
 -- 8
 select EMP_FNAM, EMP_LNAME , DEPARTMENT from emp where DEPARTMENT = " sales" ;
 
 -- 9
 select EMP_FNAM, EMP_LNAME , EMP_ID, salary, case when DEP_ID = "ad " then "5% rais" when DEP_ID = "df" then " 10% rais" 
 when DEP_ID = "aq" then " 15% rais" else " no rais" END  as  "RAIS_DEP" FROM EMP ;
 
 -- 10
SELECT EMP_LNAME, SALARY FROM EMP  ORDER BY SALARY desc LIMIT 3 ;
  
  -- 11 
  SELECT EMP_LNAME , SALARY, COMMISSION, CASE WHEN COMMISSION IS NULL THEN "0" END FROM EMP ;
  
  -- 12
  SELECT EMP_FNAM, EMP_LNAME ,SALARY, MANAGER, DEPARTMENT FROM EMP order by SALARY desc LIMIT 3 ;
  
  
  
 
 
 