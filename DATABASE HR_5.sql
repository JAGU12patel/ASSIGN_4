USE HR;

-- 1
SELECT 
extract( DAY FROM( DATEDIFF (H_DATE, S_DATE) ) )  DT,
extract( MONTH FROM ( DATEDIFF (H_DATE,S_DATE) ) )  MON,
extract( YEAR FROM ( DATEDIFF (H_DATE,S_DATE) ) )  YR FROM EMP ;

-- 2
SELECT  * ,
 date_format ( H_DATE, " %m/ %d /%y") ,
 date_format (S_DATE, " %M %d %Y") FROM  EMP  ;
 
 -- 3
 select date_format(datediff (S_DATE, current_date ) ," %d %m % d" ) as exp from emp;
 
 -- 4 
 SELECT  
    DATEDIFF(
        MAKEDATE(YEAR(CURDATE()), 1) + INTERVAL QUARTER(CURDATE()) QUARTER - INTERVAL 1 DAY, 
        MAKEDATE(YEAR(CURDATE()), 1) + INTERVAL QUARTER(CURDATE()) QUARTER - INTERVAL 1 QUARTER 
    ) as qu_day from emp ;
    
    -- 5
    -- Fetch the previous Quarter's second week's first day's date
    
    -- 6
    -- Fetch the finacial fear'15 th week's date (Formet MomDD YYYY )

-- 7
SELECT DATE_FORMAT(LAST_DAY(date(2015/01/31))
 - ((7 + WEEKDAY(LAST_DAY(date(2015/01/31))) - 6) % 7), '%Y-%m-%d')
 last_Saturday;
 

use airport;

-- 8
select datediff( ORDER BY F_DATE ASC LIMIT 1 , ORDER BY F_DATE desc LIMIT 1 ) from flight_detail ;
select datediff( F_DATE  , F_DATE )  f_diff from flight_detail ;


-- 9 
 -- Find the total duration in minutes and in seconds of the flight from Rostov to Moscow.










  


  

 -- 3
 
 
 

 
 