-- Sub-queries and Nested Selects in MySQL using phpMyAdmin

-- Write SQL queries that demonstrate the necessity of using sub-queries
-- Compose sub-queries in the where clause
-- Build Column Expressions (i.e. sub-query in place of a column)
-- Write Table Expressions (i.e. sub-query in place of a table)
-- In this lab, you will run through some SQL practice problems that will provide hands-on experience with nested SQL SELECT statements (also known as Sub-queries).


-- How does a typical Nested SELECT statement syntax look?

SELECT column_name [, column_name ]
FROM table1 [, table2 ]
WHERE column_name OPERATOR
   (SELECT column_name [, column_name ]
   FROM table1 [, table2 ]
   WHERE condition);

-- Exercise:
--1 Problem:
-- Execute a failing query (i.e. one which gives an error) to retrieve all employees records whose salary is lower than the average salary.

-- Error
select * from EMPLOYEES where salary < AVG(salary) LIMIT 0, 25
-- MySQL said: Documentation
-- #1111 - Invalid use of group function


-- 2 Problem:
-- Execute a working query using a sub-select to retrieve all employees records whose salary is lower than the average salary.

-- Hint
-- Put AVG(SALARY) of the inner SELECT in comparison with SALARY of the outer SELECT.

select EMP_ID, F_NAME, L_NAME, SALARY 
from EMPLOYEES
where SALARY < (select AVG(SALARY) 
                from EMPLOYEES);

--3 Problem:

-- Execute a failing query (i.e. one which gives an error) to retrieve all employees records with EMP_ID, SALARY and maximum salary as MAX_SALARY in every row.

SELECT EMP_ID, SALARY, max(salary) as MAX_SALARY FROM employees

--4 Problem:

-- Execute a Column Expression that retrieves all employees records with EMP_ID, SALARY and maximum salary as MAX_SALARY in every row.

-- hint: Use the SELECT (which retrieves MAX(SALARY)) as a column of the other SELECT.
select EMP_ID, SALARY, ( select MAX(SALARY) from EMPLOYEES ) AS MAX_SALARY 
from EMPLOYEES;

-- 5 Problem:

-- Execute a Table Expression for the EMPLOYEES table that excludes columns with sensitive employee data (i.e. does not include columns: SSN, B_DATE, SEX, ADDRESS, SALARY).


-- Hint
-- Use a SELECT (which retrieves non-sensitive employee data) after FROM of the other SELECT.

select * from ( select EMP_ID, F_NAME, L_NAME, DEP_ID from EMPLOYEES) AS EMP4ALL;

