/*

 SQL SET OPERATIONS

 This is Chapter: Seven, in which I am going to learn about  SQL - STRING OPERATIONS, which enable you to manipulate, transform, and extract text data.

 The contents:
	    1. Manipulations
        - CONCAT
        - LOWER
        - UPPER
	      - TRIM
	      - REPLACE
     2. Calculation
        - LEN
     3. Substring Extraction
        - LEFT
        - RIGHT
        - SUBSTRING

*/

/*
--------------------------------------
              CONCAT
--------------------------------------
*/

-- Concatenate first name and country into one column
SELECT 
    CONCAT(first_name, '-', country) AS full_info
FROM customers


/*
--------------------------------------
             LOWER()
--------------------------------------
*/

-- Convert the first name to lowercase
SELECT 
    LOWER(first_name) AS lower_case_name
FROM customers


/*
--------------------------------------
             UPPER()
--------------------------------------
*/

-- Convert the first name to uppercase
SELECT 
    UPPER(first_name) AS upper_case_name
FROM customers

/*
--------------------------------------
              TRIM()
--------------------------------------
*/

-- Find customers whose first name contains leading or trailing spaces
SELECT 
    first_name,
	LEN(first_name) len_name,
	LEN(TRIM(first_name)) len_trim_name,
	LEN(first_name) - LEN(TRIM(first_name)) flag
FROM customers
WHERE LEN(first_name)  != LEN(TRIM(first_name))

/*
--------------------------------------
           REPLACE()
--------------------------------------
*/

-- Remove dashes (-) from a phone number
SELECT
'123-456-7890' AS phone,
REPLACE('123-456-7890', '-', '/') AS clean_phone

-- Replace File Extence from txt to csv
SELECT
'report.txt' AS old_filename,
REPLACE('report.txt', '.txt', '.csv') AS new_filename
