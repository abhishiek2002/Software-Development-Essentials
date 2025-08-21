-- Schemabind a view
USE WideWorldImporters;
GO

-- Create a basic View object
CREATE VIEW Sales.OutstandingBalance
AS
SELECT
    CustomerTransactionID,
    CustomerID,
    TransactionDate,
    AmountExcludingTax,
    TaxAmount,
    OutstandingBalance
FROM Sales.CustomerTransactions
WHERE OutstandingBalance > 0
;
GO

-- Test the view
SELECT * FROM Sales.OutstandingBalance;
GO

-- Rename a column in the CustomerTransactions table
EXEC sp_rename 'Sales.CustomerTransactions.AmountExcludingTax', 'PreTaxTotal', 'COLUMN';
GO

SELECT * FROM Sales.OutstandingBalance;
GO

-- Modify the view to fix the column reference
ALTER VIEW Sales.OutstandingBalance
AS
SELECT
    CustomerTransactionID,
    CustomerID,
    TransactionDate,
    PreTaxTotal AS AmountExcludingTax,  -- Alias added to display old name in results
    TaxAmount,
    OutstandingBalance
FROM Sales.CustomerTransactions
WHERE OutstandingBalance > 0
;
GO

SELECT * FROM Sales.OutstandingBalance;
GO

-- Modify the view to prevent future changes
ALTER VIEW Sales.OutstandingBalance
WITH SCHEMABINDING
AS
SELECT
    CustomerTransactionID AS 'Transaction Number',
    CustomerID AS 'Customer Number',
    TransactionDate AS 'Order Date',
    PreTaxTotal AS 'Amount Before Tax',
    TaxAmount AS 'Tax Due',
    OutstandingBalance AS 'Balance Due'
FROM Sales.CustomerTransactions
WHERE OutstandingBalance > 0
;
GO

-- Test the view again
SELECT * FROM Sales.OutstandingBalance;
GO

-- Undo the column rename in the CustomerTransactions table
EXEC sp_rename 'Sales.CustomerTransactions.PreTaxTotal', 'AmountExcludingTax', 'COLUMN';
GO

-- Find dependent objects
SELECT dm_sql_referencing_entities.referencing_schema_name,
    dm_sql_referencing_entities.referencing_entity_name,
    sql_modules.object_id,
    sql_modules.definition,
    sql_modules.is_schema_bound
FROM sys.dm_sql_referencing_entities ('Sales.CustomerTransactions', 'OBJECT')
    JOIN sys.sql_modules ON dm_sql_referencing_entities.referencing_id = sql_modules.object_id;

-- In order to change the table, the schemabound view must be altered or dropped
DROP VIEW Sales.OutstandingBalance;
GO

-- Return the table column to its original name
EXEC sp_rename 'Sales.CustomerTransactions.PreTaxTotal', 'AmountExcludingTax', 'COLUMN';
GO