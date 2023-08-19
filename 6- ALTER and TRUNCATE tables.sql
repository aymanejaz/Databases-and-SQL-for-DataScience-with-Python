-----------------------------------------    ALTER TABLE
-- ALTER TABLE statements used to add or remove columns from a table, to modify the data type of columns, to add or remove keys, and to add or remove constraints. The syntax of the ALTER TABLE statement is:

----------- ADD COLUMN syntax
ALTER TABLE table_name
ADD COLUMN column_name data_type column_constraint;


-- For example, to add a telephone_number column to the author table in the library database, the statement will be written as:

ALTER TABLE author 
   ADD COLUMN telephone_number BIGINT;

---------- ALTER TABLE column syntax
ALTER TABLE table_name CHANGE column_name  
   column_name VARCHAR(20);

-- For example, using a numeric data type for telephone_number means that you cannot include parentheses, plus signs, or dashes as part of the number.

ALTER TABLE author CHANGE telephone_number 
   telephone_number CHAR(20);


-----------------------------------------    TRUNCATE Table
-- TRUNCATE TABLE statement are used to delete all of the rows in a table. The syntax of the statement is:

TRUNCATE TABLE table_name;

-- So, to truncate the author’s table, the statement will be written as:

TRUNCATE TABLE author;

