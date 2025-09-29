/*

 DDL Commands

This is Chapter: Two, in which I am going to learn about Data Definition Language (DDL) which is used for defining and managing database structure

We will learn the following commands:
     1. CREATE - Creating Tables
     2. ALTER - Modifying Table Structure
     3. DROP - Removing Tables

*/

/*
----------------------------------------
               CREATE
----------------------------------------
*/
-- Create a new table called persons with columns: id, person_name, birth_date, and phone.
CREATE TABLE persons (
  id INT NOT NULL,
  person_name VARCHAR(25) NOT NULL,
  birth_date DATE,
  phone_number VARCHAR(15)

  CONSTRAINT pk_persons PRIMARY KEY(id)
)

/*
----------------------------------------
                ALTER
----------------------------------------
*/

-- Add a new column called email to the persons table
ALTER TABLE persons
ADD email VARCHAR(50) NOT NULL

-- Remove the column phone from the persons table
ALTER TABLE persons
DROP COLUMN phone

/*
----------------------------------------
                 DROP
----------------------------------------
*/

-- Delete the table persons from the database
DROP TABLE persons
