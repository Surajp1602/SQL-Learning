/*

This is Chapter: One, where I will be learning about SQL Query - SELECT for retrieving, sorting, filtering, and aggregating the data efficiently.

These are clauses I will be doing today:
	 1. SELECT ALL COLUMNS
     2. SELECT SPECIFIC COLUMNS
     3. WHERE CLAUSE
     4. ORDER BY
     5. GROUP BY
     6. HAVING
     7. DISTINCT
     8. TOP

*/

/*
----------------------------------------
             COMMENTS
----------------------------------------
*/

-- This is a single-line comment.

/* This
   is
   a multiple-line
   comment
*/

/*
----------------------------------------
             SELECT ALL
----------------------------------------
*/

-- Retrieve All Customer Data
SELECT *
FROM customers

-- Retrieve All Order Data
SELECT *
FROM orders

/*
----------------------------------------
       SELECT Specific Columns
----------------------------------------
*/

-- Retrieve each customer's name, country, and score.
SELECT
	first_name,
	country,
	score
FROM customers

/*
----------------------------------------
                WHERE
----------------------------------------
*/

-- Retrieve customers with a score not equal to 0
SELECT *
FROM customers
WHERE NOT score = 0

-- Retrieve customers from Germany
SELECT *
FROM customers
WHERE country = 'Germany'

-- Retrieve the name and country of customers from Germany
SELECT
    first_name,
    country
FROM customers
WHERE country = 'Germany'

/*
----------------------------------------
              ORDER BY
----------------------------------------
*/

--Retrieve all customers and sort the results by the highest score first. 
SELECT *
FROM customers
ORDER BY score DESC

--Retrieve all customers and sort the results by the lowest score first. 
SELECT *
FROM customers
ORDER BY score ASC

--Retrieve all customers and sort the results by the country. 
SELECT *
FROM customers
ORDER BY country ASC

--Retrieve all customers and sort the results by the country and then by the highest score. 
SELECT *
FROM customers
ORDER BY country ASC, score DESC

--Retrieve the name, country, and score of customers whose score is not equal to 0 and sort the results by the highest score first. 
SELECT
    first_name,
    country,
    score
FROM customers
WHERE score != 0
ORDER BY score DESC

/*
----------------------------------------
               GROUP BY
----------------------------------------
*/

-- Find the total score for each country
SELECT 
    country,
    SUM(score) AS total_score
FROM customers
GROUP BY country

--This will not work because 'first_name' is neither part of the GROUP BY nor wrapped in an aggregate function. SQL doesn't know how to handle this column. 
SELECT 
    country,
    first_name,
    SUM(score) AS total_score
FROM customers
GROUP BY country

-- Find the total score and total number of customers for each country
SELECT 
    country,
    SUM(score) AS total_score,
    COUNT(id) AS total_customers
FROM customers
GROUP BY country

/*
----------------------------------------
                HAVING
----------------------------------------
*/

--Find the average score for each country and return only those countries with an average score greater than 430 
SELECT
    country,
    AVG(score) AS avg_score
FROM customers
GROUP BY country
HAVING AVG(score) > 430

--Find the average score for each country considering only customers with a score not equal to 0 and return only those countries with an average score greater than 430 
SELECT
    country,
    AVG(score) AS avg_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430

/*
----------------------------------------
               DISTINCT
----------------------------------------
*/

-- Return Unique list of all countries
SELECT DISTINCT country
FROM customers

/*
----------------------------------------
                 TOP
----------------------------------------
*/

-- Retrieve only 3 Customers
SELECT TOP 3 *
FROM customers

-- Retrieve the Top 3 Customers with the Highest Scores
SELECT TOP 3 *
FROM customers
ORDER BY score DESC

-- Retrieve the Lowest 2 Customers based on the score
SELECT TOP 2 *
FROM customers
ORDER BY score ASC
