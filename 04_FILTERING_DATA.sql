/*

SQL Filtering Data

This is Chapter: Four, in which I am going to learn about techniques for filtering data as well as various operators.

This is the content:
     1. Comparison Operators - =, <>, >, >=, <, <=
     2. Logical Operators - AND, OR, NOT
     3. Range Filtering - BETWEEN
     4. Set Filtering - IN
     5. Pattern Matching - LIKE

*/

/*
----------------------------------------
      Comparision Operators
----------------------------------------
*/

-- Retrieve all customers from Germany.
SELECT *
FROM customers
WHERE country = 'Germany'

-- Retrieve all customers who are not from Germany.
SELECT *
FROM customers
WHERE country <> 'Germany'

-- Retrieve all customers with a score greater than 500.
SELECT *
FROM customers
WHERE score > 500

-- Retrieve all customers with a score of 500 or more.
SELECT *
FROM customers
WHERE score >= 500

-- Retrieve all customers with a score less than 500.
SELECT *
FROM customers
WHERE score < 500

-- Retrieve all customers with a score of 500 or less.
SELECT *
FROM customers
WHERE score <= 500

/*
----------------------------------------
           Logical Operators
----------------------------------------
*/

-- Retrieve all customers who are from the USA and have a score greater than 500.
SELECT *
FROM customers
WHERE country = 'USA' AND score > 500

-- Retrieve all customers who are either from the USA or have a score greater than 500.
SELECT *
FROM customers
WHERE country = 'USA' OR score > 500

-- Retrieve all customers with a score not less than 500.
SELECT *
FROM customers
WHERE NOT score < 500

/*
----------------------------------------
           Range Filtering
----------------------------------------
*/

/*
----------------------------------------
            Set Filtering
----------------------------------------
*/


/*
----------------------------------------
           Pattern Matching
----------------------------------------
*/
