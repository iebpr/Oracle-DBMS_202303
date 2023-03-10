-- 실습 5-1
SELECT *
  FROM EMP;

-- 실습 5-2
SELECT *
  FROM EMP
 WHERE DNO = 30;

-- 실습 5-3
SELECT *
  FROM EMP
 WHERE DNO = 30
   AND JOB = 'SALESMAN';

-- 실습 5-4
SELECT *
  FROM EMP
 WHERE DNO = 30
    OR JOB = 'SALESMAN';

-- 실습 5-5
SELECT *
  FROM EMP
 WHERE SALARY * 12 = 36000;

-- 실습 5-6
SELECT *
  FROM EMP
 WHERE SALARY >= 3000;

-- 실습 5-7
SELECT *
  FROM EMP
 WHERE ENAME >= 'F';

-- 실습 5-8
SELECT *
  FROM EMP
 WHERE ENAME <= 'FORZ';

-- 실습 5-9
SELECT *
  FROM EMP
 WHERE SALARY != 3000;

-- 실습 5-10
SELECT *
  FROM EMP
 WHERE SALARY <> 3000;

-- 실습 5-11
SELECT *
  FROM EMP
 WHERE SALARY ^= 3000;

-- 실습 5-12
SELECT *
  FROM EMP
 WHERE NOT SALARY = 3000;
 

-- 실습 5-13
SELECT *
  FROM EMP
 WHERE JOB = 'MANAGER'
    OR JOB = 'SALESMAN'
    OR JOB = 'CLERK';

-- 실습 5-14
SELECT *
  FROM EMP
 WHERE JOB IN ('MANAGER', 'SALARYESMAN', 'CLERK');

-- 실습 5-15
SELECT *
  FROM EMP
 WHERE JOB != 'MANAGER'
   AND JOB <> 'SALESMAN'
   AND JOB ^= 'CLERK';

-- 실습 5-16
SELECT *
  FROM EMP
 WHERE JOB NOT IN ('MANAGER', 'SALESMAN', 'CLERK');

-- 실습 5-17
SELECT *
  FROM EMP
 WHERE SALARY >= 2000
   AND SALARY <= 3000;

-- 실습 5-18
SELECT *
  FROM EMP
 WHERE SALARY BETWEEN 2000 AND 3000;



-- 실습 5-19
SELECT *
  FROM EMP
 WHERE  SALARY < 2000
    OR  SALARY > 3000;

SELECT *
  FROM EMP
 WHERE SALARY NOT BETWEEN 2000 AND 3000;

-- 실습 5-20
SELECT *
  FROM EMP
 WHERE ENAME LIKE 'S%';

-- 실습 5-21
SELECT *
  FROM EMP
 WHERE ENAME LIKE '_L%';

-- 실습 5-22
SELECT *
  FROM EMP
 WHERE ENAME LIKE '%AM%';

-- 실습 5-23
SELECT *
  FROM EMP
 WHERE ENAME NOT LIKE '%AM%';

-- 실습 5-24
SELECT ENAME, SALARY,COMMISSION 
  FROM EMP;
  
SELECT ENAME, SALARY, 
       SALARY*12+COMMISSION AS ANNAL_SALARY, 
       COMMISSION
  FROM EMP;

-- 실습 5-25
SELECT *
  FROM EMP
 WHERE COMMISSION = NULL;

-- 실습 5-26
SELECT *
  FROM EMP
 WHERE COMMISSION IS NULL;

-- 실습 5-27
SELECT *
  FROM EMP
 WHERE MANAGER IS NOT NULL;

-- 실습 5-28
SELECT *
  FROM EMP
 WHERE SALARY > NULL --False
   AND COMMISSION IS NULL;

-- 실습 5-29
SELECT *
  FROM EMP
 WHERE SALARY > NULL --False
    OR COMMISSION IS NULL;

-- 실습 5-30
SELECT ENO, ENAME, SALARY, DNO
  FROM EMP
 WHERE DNO = 10
UNION 
SELECT ENO, ENAME, SALARY, DNO
  FROM EMP
 WHERE DNO = 20;
 
SELECT ENO, ENAME, SALARY, DNO
  FROM EMP
 WHERE DNO IN (10, 20);

SELECT ENO, ENAME, SALARY, DNO
  FROM EMP
 WHERE DNO = 10
    OR DNO = 20; 

-- 실습 5-31
SELECT ENO, ENAME, SALARY, DNO
  FROM EMP
 WHERE DNO = 10
UNION 
SELECT ENO, ENAME, SALARY
  FROM EMP
 WHERE DNO = 20;

-- 실습 5-32
SELECT ENO, ENAME, SALARY, DNO
  FROM EMP
 WHERE DNO = 10
UNION
SELECT ENAME, ENO, DNO, SALARY
  FROM EMP
 WHERE DNO = 20;
 
desc EMP

-- 실습 5-33(사용안됨)
SELECT ENO, ENAME, SALARY, DNO
  FROM EMP
 WHERE DNO = 10
UNION
SELECT SALARY, JOB, DNO, SALARY
  FROM EMP
 WHERE DNO = 20;

-- 실습 5-34
SELECT ENO, ENAME, SALARY, DNO
  FROM EMP
 WHERE DNO = 10
UNION
SELECT ENO, ENAME, SALARY, DNO
  FROM EMP
 WHERE DNO = 10;

-- 실습 5-35
SELECT ENO, ENAME, SALARY, DNO
  FROM EMP
 WHERE DNO = 10
UNION ALL
SELECT ENO, ENAME, SALARY, DNO
  FROM EMP
 WHERE DNO = 10;

-- 실습 5-36
SELECT ENO, ENAME, SALARY, DNO
  FROM EMP
MINUS
SELECT ENO, ENAME, SALARY, DNO
  FROM EMP
 WHERE DNO = 10;

-- 실습 5-37
SELECT ENO, ENAME, SALARY, DNO
  FROM EMP
INTERSECT
SELECT ENO, ENAME, SALARY, DNO
  FROM EMP
 WHERE DNO = 10;
