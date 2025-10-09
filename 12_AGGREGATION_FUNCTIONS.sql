/*

SQL Aggregation Functions

This is Chapter: Twelve, in which I am going to learn about various Aggregation Functions.

The contents:
	1. COUNT
	2. SUM
	3. AVG
	4. MAX
	5. MIN

*/

/*
----------------------------------
             COUNT
----------------------------------
*/

-- Find the total number of customers.
SELECT COUNT(*) AS CustomerCount
FROM Sales.Customers

/*
----------------------------------
              SUM
----------------------------------
*/

-- Find the total sales of all orders.
SELECT SUM(Sales) AS SalesTotal
FROM Sales.Orders

/*
----------------------------------
              AVG
----------------------------------
*/

-- Find the average sales of all orders.
SELECT AVG(Sales) AS SalesAverage
FROM Sales.Orders

/*
----------------------------------
              MAX
----------------------------------
*/

-- Find the highest score among the customers.
SELECT MAX(Score) AS HighestScore
FROM Sales.Customers

/*
----------------------------------
               MIN
----------------------------------
*/

-- Find the lowest score among the customers.
SELECT MIN(Score) AS LowestScore
FROM Sales.Customers
