-- Create and Drop tables in the database


-- Here we will look at some examples to create and drop tables.
-- In the previous video we saw the general syntax to create a table:
create table TABLENAME (
COLUMN1 datatype,
COLUMN2 datatype,
COLUMN3 datatype,
…
);

-- Therefore to create a table called TEST with two columns - ID of type integer, and Name of type varchar, we could create it using the following SQL statement:

create table TEST (
    ID integer,
    NAme varchar(30)
);

-- Now let’s create a table called COUNTRY with an ID column, a two letter country code column, and a variable length country name column:

create table COUNTRY (
    ID int,
    CODE char(2),
    NAME varchar(60)
);


-- Sometimes you may see additional keywords in a create table statement:

create table COUNTRY (
    ID int,
    CODE char(2),
    NAME varchar(60),
    PRIMARY KEY (ID)
);

-- In the above example the ID column has the NOT NULL constraint added after the datatype - meaning that it cannot contain a NULL or an empty value. If you look at the last row in the create table statement above you will note that we are using ID as a Primary Key and the database does not allow Primary Keys to have NULL values. A Primary Key is a unique identifier in a table, and using Primary Keys can help speed up your queries significantly.
-- If the table you are trying to create already exists in the database, you will get an error indicating table XXX.YYY already exists. To circumvent this error, either create a table with a different name or first DROP the existing table. It is quite common to issue a DROP before doing a CREATE in test and development scenarios.
-- Here is an example:

drop table COUNTRY;
create table COUNTRY (
    ID integer PRIMARY KEY NOT NULL,
    CCODE char(2),
    NAME varchar(60)
);

-- WARNING: before dropping a table ensure that it doesn’t contain important data that can’t be recovered easily.
-- Note that if the table does not already exist and you try to drop it, you will see an error like XXX.YYY is an undefined name. You can ignore this error as long as the subsequent CREATE statement executed successfully.
