-- Multiple Tables in MySQL using phpMyAdmin - Implicit Joins | Sub-Queries

-- Write SQL queries that access more than one table
-- Compose queries that access multiple tables using a nested statement in the WHERE clause
-- Build queries with multiple tables in the FROM clause
-- Write Implicit Join queries with join criteria specified in the WHERE clause
-- Specify aliases for table names and qualify column names with table aliases
-- In this lab, you will through some SQL practice problems that will provide hands-on experience with SQL queries that access multiple tables. You will be:

-- Accessing Multiple Tables with Sub-Queries
-- Accessing Multiple Tables with Implicit Joins


-- How does an Implicit version of CROSS JOIN (also known as Cartesian Join) statement syntax look?
SELECT column_name(s)
FROM table1, table2;

-- How does an Implicit version of INNER JOIN statement syntax look?
SELECT column_name(s)
FROM table1, table2
WHERE table1.column_name = table2.column_name;


------------------ ********  Exercise 1: Accessing Multiple Tables with Sub-Queries ********** ------------------ 

-- Problem 1:
-- Retrieve only the EMPLOYEES records that correspond to jobs in the JOBS table.
select * from EMPLOYEES where JOB_ID IN (select JOB_IDENT from JOBS);

-- Problem 2:
-- Retrieve only the list of employees whose JOB_TITLE is Jr. Designer.
SELECT * from employees WHERE job_id IN (SELECT JOB_IDENT from Jobs WHERE job_title = 'Jr. Designer');

-- Problem 3:
-- Retrieve JOB information and who earn more than $70,000.
select JOB_TITLE, MIN_SALARY,MAX_SALARY,JOB_IDENT from JOBS where JOB_IDENT IN (select JOB_ID from EMPLOYEES where SALARY > 70000 );

-- Problem 4:
-- Retrieve JOB information and list of employees whose birth year is after 1976.
select JOB_TITLE, MIN_SALARY,MAX_SALARY,JOB_IDENT from JOBS 
where JOB_IDENT IN 
(select JOB_ID from EMPLOYEES where YEAR(B_DATE)>1976 );

-- Problem 5:
-- Retrieve JOB information and list of female employees whose birth year is after 1976.
 SELECT job_title , min_salary, max_salary, job_ident from jobs where job_ident IN (SELECT job_id FROM employees WHERE YEAR(B_DATE)>1976 AND sex='F');


------------------ ********  Exercise 2: Accessing Multiple Tables with Implicit Joins ******** ------------------

-- Problem 1:
-- Perform an implicit cartesian/cross join between EMPLOYEES and JOBS tables.
select * from EMPLOYEES, JOBS;


-- Problem 2:
-- Retrieve only the EMPLOYEES records that correspond to jobs in the JOBS table.
select * from EMPLOYEES, JOBS where EMPLOYEES.JOB_ID = JOBS.JOB_IDENT;

-- Problem 3:
-- Redo the previous query, using shorter aliases for table names.
select * from EMPLOYEES E, JOBS J where E.JOB_ID = J.JOB_IDENT;

-- Problem 4:
-- Redo the previous query, but retrieve only the Employee ID, Employee Name and Job Title.
select EMP_ID,F_NAME,L_NAME, JOB_TITLE from EMPLOYEES E, JOBS J where E.JOB_ID = J.JOB_IDENT;

-- Problem 5:
-- Redo the previous query, but specify the fully qualified column names with aliases in the SELECT clause.
select E.EMP_ID,E.F_NAME,E.L_NAME, J.JOB_TITLE from EMPLOYEES E, JOBS  J where E.JOB_ID = J.JOB_IDENT;

