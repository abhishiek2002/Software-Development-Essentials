-- The ISNULL function
USE WideWorldImporters;
GO

-- Function syntax
ISNULL( {expression} , {replacement value})

-- ISNULL example
SELECT ISNULL(1, 100);
SELECT ISNULL('kangaroo', 100);
SELECT ISNULL(NULL, 100);
SELECT ISNULL(NULL, 'elephant');


-- View data
SELECT SupplierID,
       SupplierName,
       DeliveryMethodID
FROM Purchasing.Suppliers;

SELECT * FROM Application.DeliveryMethods;
GO

-- Use ISNULL to assign NULL values a default delivery method
SELECT SupplierID,
       SupplierName,
       ISNULL(DeliveryMethodID, 1)
FROM Purchasing.Suppliers;


-- ISNULL in the FROM clause works, but impacts query performance
SELECT Suppliers.SupplierID,
       Suppliers.SupplierName,
       Suppliers.DeliveryMethodID,
       DeliveryMethods.DeliveryMethodName
FROM Purchasing.Suppliers
    INNER JOIN Application.DeliveryMethods
    ON Suppliers.DeliveryMethodID = DeliveryMethods.DeliveryMethodID;


-- Instead, perform the substitution in the SELECT clause
SELECT Suppliers.SupplierID,
       Suppliers.SupplierName,
       Suppliers.DeliveryMethodID,
       ISNULL(DeliveryMethods.DeliveryMethodName, 'Post') AS DeliveryMethodID
FROM Purchasing.Suppliers
    LEFT JOIN Application.DeliveryMethods
    ON Suppliers.DeliveryMethodID = DeliveryMethods.DeliveryMethodID;