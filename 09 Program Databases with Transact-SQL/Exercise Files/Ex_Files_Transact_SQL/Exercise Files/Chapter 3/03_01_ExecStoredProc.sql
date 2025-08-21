-- Stored Procedures
USE WideWorldImporters;
GO

-- Basic stored procedure
CREATE OR ALTER PROCEDURE Application.uspViewEmployees
AS
SELECT PersonID, FullName, IsEmployee, IsSalesperson
FROM Application.People
WHERE IsEmployee = 1;
GO

-- Execute a stored procedure
EXECUTE Application.uspViewEmployees;
GO

-- Update the stored procedure to mask column names
CREATE OR ALTER PROCEDURE Application.uspViewEmployees
AS
SELECT PersonID AS 'ID Number',
    FullName AS 'Name',
    'Employee' AS Status,
    CASE WHEN IsSalesperson = 1 THEN 'Salesperson'
         WHEN IsSalesperson = 0 THEN 'Not Salesperson'
    END AS Position
FROM Application.People
WHERE IsEmployee = 1;
GO

-- Stored procedures can perform multiple tasks
CREATE OR ALTER PROCEDURE Application.uspViewData
AS
SELECT TOP 1 * FROM Application.People;
SELECT TOP 1 * FROM Sales.Customers;
SELECT TOP 1 * FROM Warehouse.Colors;
GO

-- Execute multi-task stored procedure
EXECUTE Application.uspViewData;
GO