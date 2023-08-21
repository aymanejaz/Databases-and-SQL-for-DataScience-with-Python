---------------------- Exercise 1: Import csv file to phpmyadmin DB----------------------
-- add to phpmyadmin table name: mysql_learners
-- https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DB0201EN-SkillsNetwork/labs/MySQL/week3/PETRESCUE-CREATE.sql


---------------------- Exercise 2: Aggregate Functions ----------------------

-- Query A1: Enter a function that calculates the total cost of all animal rescues in the PETRESCUE table.

SELECT SUM(COST) from petrescue;

-- Query A2: Enter a function that displays the total cost of all animal rescues in the PETRESCUE table in a column called SUM_OF_COST.
SELECT SUM(COST) as SUM_OF_COST from petrescue;


-- Query A3: Enter a function that displays the maximum quantity of animals rescued.
select MAX(QUANTITY) from PETRESCUE;

-- Query A4: Enter a function that displays the average cost of animals rescued.
select AVG(COST) from PETRESCUE;

-- Query A5: Enter a function that displays the average cost of rescuing a dog.
select AVG(COST/QUANTITY) from PETRESCUE where ANIMAL = 'Dog';



---------------------- Exercise 3: Scalar and String Functions ----------------------

-- Query B1: Enter a function that displays the rounded cost of each rescue.
select ROUND(COST) from PETRESCUE;


-- Query B2: Enter a function that displays the length of each animal name.
select LENGTH(ANIMAL) from PETRESCUE;


Query B3: Enter a function that displays the animal name in each rescue in uppercase.

Query B4: Enter a function that displays the animal name in each rescue in uppercase without duplications.

Query B5: Enter a query that displays all the columns from the PETRESCUE table, where the animal(s) rescued are cats. Use cat in lower case in the query.


---------------------- Exercise 4: Date and Time Functions ----------------------
Query C1: Enter a function that displays the day of the month when cats have been rescued.

Query C2: Enter a function that displays the number of rescues on the 5th month.

Query C3: Enter a function that displays the number of rescues on the 14th day of the month.

Query C4: Animals rescued should see the vet within three days of arrivals. Enter a function that displays the third day from each rescue.

Query C5: Enter a function that displays the length of time the animals have been rescued; the difference between today’s date and the rescue date.














