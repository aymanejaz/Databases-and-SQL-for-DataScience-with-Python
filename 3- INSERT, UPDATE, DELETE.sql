--  INSERT, UPDATE, DELETE

-- --------------- Insert new rows into a table
-- INSERT INTO table_name (column1, column2, ... )
-- VALUES (value1, value2, ... )
-- ;

-- --------------- Update data in existing rows of the table
-- UPDATE table_name
-- SET column1 = value1, column2 = value2, ...
-- WHERE condition
-- ;

-- --------------- Remove rows from a table
-- DELETE FROM table_name
-- WHERE condition
-- ; 


--  About dataset: https://github.com/simonw/datasette
--  Instructor (
--     ins_id:     unique identification number of the instructors,    
--     lastname:   last name of the instructors,
--     firstname:  first name of the instructors,
--     city:       name of the cities where instructors are located,
--     country:    two-letter country code of the countries where instructors are located
--    ) 

SELECT * FROM Instructor;

----------------------------------- Exercise 1: INSERT

--  Problem:
--  Insert a new instructor record with id 4 for Sandip Saha who lives in Edmonton, CA into the “Instructor” table 
-- Solution:
INSERT INTO Instructor(ins_id, lastname, firstname, city, country )
VALUES(4,'Ijaz', 'Ayman', 'Multan', 'Pakistan' );

-- multiple rows into the Instructor table.

-- Problem:
-- Insert two new instructor records into the “Instructor” table. First record with id 5 for John Doe who lives in Sydney, AU. Second record with id 6 for Jane Doe who lives in Dhaka, BD.

INSERT INTO Instructor(ins_id, lastname, firstname, city, country)
VALUES(5, 'Doe', 'John', 'Sydney', 'AU'), (6, 'Doe', 'Jane', 'Dhaka', 'BD');


-- Problem:
-- Insert a new instructor record with id 7 for Antonio Cangiano who lives in Vancouver, CA into the “Instructor” table.

INSERT INTO Instructor(ins_id, lastname, firstname, city, country)
VALUES(7, 'Cangiano', 'Antonio', 'Vancouver', 'CA');

-- Problem:
-- Insert two new instructor records into the “Instructor” table. First record with id 8 for Steve Ryan who lives in Barlby, GB. Second record with id 9 for Ramesh Sannareddy who lives in Hyderabad, IN.

INSERT INTO Instructor(ins_id, lastname, firstname, city, country)
VALUES(8, 'Ryan', 'Steve', 'Barlby' , 'GB'), (9, 'Sannareddy', 'Ramesh', 'Hyderabad' , 'IN');


----------------------------------- Exercise 2: UPDATE

-- Problem:
-- Update the city for Sandip to Toronto.
-- Solution:
UPDATE Instructor 
SET city='Toronto' 
WHERE firstname="Sandip";


-- Problem:
-- Update the city and country for Doe with id 5 to Dubai and AE respectively.
-- Solution:
UPDATE Instructor 
SET city='Dubai', country='AE' 
WHERE ins_id=5;

-- Problem:
-- Update the city and country for Doe with id 5 to Dubai and AE respectively.
-- Solution:

UPDATE Instructor 
SET city='Dubai', country='AE' 
WHERE ins_id=5;

-- Problem:
-- Update the city and country for Sandip with id 4 to Dhaka and BD respectively.
-- Solution: 

UPDATE Instructor 
SET city='Dhaka', country='BD' 
WHERE ins_id=4;
SELECT * FROM Instructor;



----------------------------------- Exercise 2: DELETE

-- Problem:
-- Remove the instructor record of Doe whose id is 6.
-- Solution:

DELETE FROM instructor
WHERE ins_id = 6;

Problem:
Remove the instructor record of Hima.

-- Hint
-- Remove the instructor record of Hima.
-- Solution

DELETE FROM instructor
WHERE firstname = 'Hima';
SELECT * FROM Instructor;





