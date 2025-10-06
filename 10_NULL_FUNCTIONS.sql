/*

 SQL NULL FUNCTIONS

 This is Chapter: Ten, in which I am going to learn about SQL - NULL FUNCTIONS, which are used to handle NULL values.

 The contents:
	 1. Handle NULL - Data Aggregation
     2. Handle NULL - Mathematical Operators
     3. Handle NULL - Sorting Data
     4. NULLIF - Division by Zero
     5. IS NULL - IS NOT NULL
     6. LEFT ANTI JOIN

*/

/*
---------------------------------------------
      Handle NULL - Data Aggregation
---------------------------------------------
*/

-- Find the average scores of the customers. Uses COALESCE to replace NULL Score with 0.
SELECT
    CustomerID,
    Score,
    COALESCE(Score, 0) AS Score2,
    AVG(Score) OVER () AS AvgScores,
    AVG(COALESCE(Score, 0)) OVER () AS AvgScores2
FROM Sales.Customers;

/*
---------------------------------------------
      Handle NULL - Data Aggregation
---------------------------------------------
*/

SELECT 
	AVG(ISNULL(Score, 0)) AVG
FROM Sales.Customers

/*
---------------------------------------------
    HANDLE NULL - MATHEMATICAL OPERATORS
---------------------------------------------
*/
	
-- Display the full name of customers in a single field by merging their first and last names, and add 10 bonus points to each customer's score.
SELECT
	CustomerID,
	(COALESCE(FirstName, '') + ' ' +COALESCE(LastName, '')) AS CustomerName,
	(COALESCE(Score, 0) + 10) AS Score
FROM Sales.Customers

/*
---------------------------------------------
        Handle NULL - Sorting Data
---------------------------------------------
*/
	
-- Sort the customers from lowest to highest scores, with NULL values appearing last.
SELECT
	CustomerID,
	Score,
	CASE WHEN Score IS NULL THEN 1 ELSE 0 END AS FLAG
FROM Sales.Customers
ORDER BY COALESCE(Score,9999999)  

/*
---------------------------------------------
         NULLIF - Division by Zero
---------------------------------------------
*/
	
-- Find the sales price for each order by dividing sales by quantity. Uses NULLIF to avoid division by zero.
SELECT 
	Sales,
	Quantity, 
	Sales / NULLIF(Quantity, 0) AS SalesPrice
FROM Sales.Orders

/*
---------------------------------------------
           IS NULL - IS NOT NULL
---------------------------------------------
*/
	
-- Identify the customers who have no scores 
SELECT *
FROM Sales.Customers
WHERE Score IS NULL

-- Identify the customers who have scores 
SELECT *
FROM Sales.Customers
WHERE Score IS NOT NULL

/*
---------------------------------------------
             LEFT ANTI JOIN
---------------------------------------------
*/
-- List all details for customers who have not placed any orders 
SELECT 
	c.*,
	o.OrderID
FROM Sales.Customers c
LEFT JOIN Sales.Orders o
ON o.CustomerID = c.CustomerID
WHERE o.CustomerID IS NULL


