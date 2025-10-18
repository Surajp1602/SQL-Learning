/*

WINDOW AGGREGATION

This is Chapter: Thirteen, in which I am going to learn about basics of Window Aggregations.

*/

-- Find the total sales across all orders.
SELECT 
	SUM(Sales) AS TotalSales
FROM Sales.Orders

-- Find the total sales for each product.
SELECT
	ProductID,
	SUM(Sales) AS TotalSales
FROM Sales.Orders
GROUP BY ProductID

-- Find the total sales for each product, additionally provide details such as order id and order date.
SELECT
	OrderID,
	OrderDate,
	ProductID,
	SUM(Sales) OVER(PARTITION BY ProductID) AS TotalSales
FROM Sales.Orders



