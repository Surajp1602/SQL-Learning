/*
SELECT 
	AVG(ISNULL(Score, 0)) AVG
FROM Sales.Customers


SELECT
	CustomerID,
	(COALESCE(FirstName, '') + ' ' +COALESCE(LastName, '')) AS CustomerName,
	(COALESCE(Score, 0) + 10) AS Score
FROM Sales.Customers

SELECT
	CustomerID,
	Score,
	CASE WHEN Score IS NULL THEN 1 ELSE 0 END AS FLAG
FROM Sales.Customers
ORDER BY COALESCE(Score,9999999)  
*/

/*
SELECT 
	Sales,
	Quantity, 
	Sales / NULLIF(Quantity, 0) AS SalesPrice
FROM Sales.Orders
*/

/*
SELECT *
FROM Sales.Customers
WHERE Score IS NULL
*/

/*
SELECT *
FROM Sales.Customers
WHERE Score IS NOT NULL
*/

/*
SELECT 
	c.*,
	o.OrderID
FROM Sales.Customers c
LEFT JOIN Sales.Orders o
ON o.CustomerID = c.CustomerID
WHERE o.CustomerID IS NULL
*/