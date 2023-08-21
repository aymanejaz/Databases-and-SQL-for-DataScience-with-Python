-- String Patterns, Sorting and Grouping in MySQL using phpMyAdmin

---------------------------------------- Exercise 1: String Patterns
-- Problem:
-- Retrieve all employees whose address is in Elgin,IL.

SELECT F_NAME , L_NAME
FROM EMPLOYEES
WHERE ADDRESS LIKE '%Elgin,IL%';

-- Problem:
-- Retrieve all employees who were born during the 1970’s.

SELECT F_NAME , L_NAME
FROM EMPLOYEES
WHERE B_DATE LIKE '1970';

-- Problem:
-- Retrieve all employees in department 5 whose salary is between 60000 and 70000.

SELECT * FROM `employees` WHERE (SALARY BETWEEN 60000 AND 70000) AND DEP_ID = 5;



---------------------------------------- Exercise 2: Sorting

-- In this exercise, you will go through some SQL problems on Sorting.

-- Problem:
-- Retrieve a list of employees ordered by department ID.

SELECT F_NAME, L_NAME, DEP_ID 
FROM EMPLOYEES
ORDER BY DEP_ID;

-- Problem:
-- Retrieve a list of employees ordered in descending order by department ID and within each department ordered alphabetically in descending order by last name.

SELECT F_NAME, L_NAME, DEP_ID 
FROM EMPLOYEES
ORDER BY DEP_ID DESC, L_NAME DESC;

-- (Optional) Problem:

-- In SQL problem 2 (Exercise 2 Problem 2), use department name instead of department ID. Retrieve a list of employees ordered by department name, and within each department ordered alphabetically in descending order by last name.

-- Hint
-- Department name is in the DEPARTMENTS table. So your query will need to retrieve data from more than one table. Donâ€™t worry if you are not able to figure this SQL problem out. Weâ€™ll cover working with multiple tables in the lecture Working with Multiple Tables.

SELECT D.DEP_NAME , E.F_NAME, E.L_NAME
FROM EMPLOYEES as E, DEPARTMENTS as D
WHERE E.DEP_ID = D.DEPT_ID_DEP
ORDER BY D.DEP_NAME, E.L_NAME DESC;

-- In the SQL Query above, D and E are aliases for the table names. Once you define an alias like D in your query, you can simply write D.COLUMN_NAME rather than the full form DEPARTMENTS.COLUMN_NAME.


---------------------------------------- Exercise 3: Grouping

-- Problem:
-- For each department ID retrieve the number of employees in the department.

SELECT DEP_ID, COUNT(*)
FROM EMPLOYEES
GROUP BY DEP_ID;

-- Problem:
-- For each department retrieve the number of employees in the department, and the average employee salary in the department..

SELECT DEP_ID, COUNT(*), AVG(SALARY)
FROM EMPLOYEES
GROUP BY DEP_ID;

-- Problem:
-- Label the computed columns in the result set of SQL problem 2 (Exercise 3 Problem 2) as NUM_EMPLOYEES and AVG_SALARY.

-- Hint
-- Use SQL Aliases: column_name AS alias_name. For example, AVG(SALARY) AS “AVG_SALARY”.

-- Solution

SELECT DEP_ID, COUNT(*) AS "NUM_EMPLOYEES", AVG(SALARY) AS "AVG_SALARY"
FROM EMPLOYEES
GROUP BY DEP_ID;


-- Problem: 4
-- In SQL problem 3 (Exercise 3 Problem 3), order the result set by Average Salary..

-------- Hint
-- Use ORDER BY after the GROUP BY.
-------  Solution

SELECT DEP_ID, COUNT(*) AS "NUM_EMPLOYEES", AVG(SALARY) AS "AVG_SALARY"
FROM EMPLOYEES
GROUP BY DEP_ID
ORDER BY AVG_SALARY;


-- Problem: 5

-- In SQL problem 4 (Exercise 3 Problem 4), limit the result to departments with fewer than 4 employees.
-- hint 
-- Use HAVING after the GROUP BY, and use the count() function in the HAVING clause instead of the column label.

SELECT DEP_ID, COUNT(*) AS "NUM_EMPLOYEES", AVG(SALARY) AS "AVG_SALARY"
FROM EMPLOYEES
GROUP BY DEP_ID
HAVING count(*) < 4
ORDER BY AVG_SALARY;

