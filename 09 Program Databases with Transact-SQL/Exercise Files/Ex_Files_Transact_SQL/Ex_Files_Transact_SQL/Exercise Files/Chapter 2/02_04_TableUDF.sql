-- Creating a table-valued function to review recent orders
USE WideWorldImporters;
GO

-- Explore the existing data
SELECT * FROM Sales.Orders WHERE OrderID = 2;
SELECT * FROM Sales.OrderLines WHERE OrderID = 2;
SELECT * FROM Sales.Customers WHERE CustomerID = 803;
GO

-- Write a query that retrieves the required information
-- This query will serve as the model for the function
        -- Turn the query into a table-valued function
        -- CREATE OR ALTER FUNCTION Sales.LastOrder (@CustomerID AS INT)
        -- RETURNS TABLE
        -- AS RETURN
SELECT
    Orders.OrderID AS [Order Number],
    Orders.CustomerID AS [Customer Number],
    Customers.CustomerName AS [Customer Name],
    Orders.OrderDate AS [Order Date],
    Orders.ExpectedDeliveryDate AS [Delivery Date],
    OrderLines.OrderLineID AS [Line Number],
    OrderLines.Description AS [Product Description]
FROM Sales.Orders
    INNER JOIN Sales.OrderLines ON Orders.OrderID = OrderLines.OrderID
    INNER JOIN Sales.Customers ON Orders.CustomerID = Customers.CustomerID
WHERE Orders.OrderID =
    (SELECT TOP 1 Orders.OrderID
     FROM Sales.Orders
     WHERE Orders.CustomerID = 123
     ORDER BY Orders.OrderID DESC)
;
GO

-- Test out the table-valued function
SELECT * FROM Sales.Lastorder(123);
SELECT * FROM Sales.LastOrder(828);