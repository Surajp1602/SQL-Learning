/*

 SQL SET OPERATIONS

 This is Chapter: Six, in which I am going to learn about  SQL - SET OPERATIONS, which enable you to combine results from multiple queries into a single result set.

 The contents:
	   1. SQL Operation Rules
     2. UNION
     3. UNION ALL
     4. EXCEPT
     5. INTERSECT

*/

/*
--------------------------------------
           RULES FOR SETS
--------------------------------------
*/

-- RULE: The data types of columns in each query should match.
SELECT
    FirstName,
    LastName,
    Country
FROM Sales.Customers
UNION
SELECT
    FirstName,
    LastName
FROM Sales.Employees;

-- RULE: The order of the columns in each query must be the same.
SELECT
    LastName,
    CustomerID
FROM Sales.Customers
UNION
SELECT
    EmployeeID,
    LastName
FROM Sales.Employees;

-- RULE: The column names in the result set are determined by the column names specified in the first SELECT statement.

SELECT
    CustomerID AS ID,
    LastName AS Last_Name
FROM Sales.Customers
UNION
SELECT
    EmployeeID,
    LastName
FROM Sales.Employees;

-- RULE: Ensure that the correct columns are used to maintain data consistency.

SELECT
    FirstName,
    LastName
FROM Sales.Customers
UNION
SELECT
    LastName,
    FirstName
FROM Sales.Employees;


/*
--------------------------------------
              UNION
--------------------------------------
*/

-- Combine the data from Employees and Customers into one table using UNION 

SELECT
    FirstName,
    LastName
FROM Sales.Customers
UNION
SELECT
    FirstName,
    LastName
FROM Sales.Employees;

/*
--------------------------------------
            UNION ALL
--------------------------------------
*/

-- Combine the data from Employees and Customers into one table, including duplicates, using UNION ALL 
SELECT
    FirstName,
    LastName
FROM Sales.Customers
UNION ALL
SELECT
    FirstName,
    LastName
FROM Sales.Employees;

/*
--------------------------------------
             INTERSECT
--------------------------------------
*/

-- Find employees who are also customers using INTERSECT 
SELECT
    FirstName,
    LastName
FROM Sales.Employees
INTERSECT
SELECT
    FirstName,
    LastName
FROM Sales.Customers;

/*
--------------------------------------
              EXCEPT
--------------------------------------
*/

--Find employees who are NOT customers using EXCEPT 
SELECT
    FirstName,
    LastName
FROM Sales.Employees
EXCEPT
SELECT
    FirstName,
    LastName
FROM Sales.Customers;
