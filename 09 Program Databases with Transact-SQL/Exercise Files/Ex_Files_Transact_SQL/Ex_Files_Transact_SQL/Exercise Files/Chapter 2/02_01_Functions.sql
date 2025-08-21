-- Function determinism
USE WideWorldImporters;
GO

-- Built-in functions that don't require parameter or arguments
SELECT GETDATE() AS Today;
SELECT RAND() AS Random;

-- Most functions take at least one parameter or argument
SELECT TOP 1000 * FROM Warehouse.ColdRoomTemperatures_Archive;
SELECT
    MAX(Temperature) AS 'Maximum Temp',
    MIN(Temperature) AS 'Minimum Temp',
    AVG(Temperature) AS 'Average Temp'
FROM Warehouse.ColdRoomTemperatures_Archive;

-- Some functions require multiple parameters or arguments
SELECT DISTINCT TOP 10
    InvoiceDate,
    FORMAT(InvoiceDate, 'd') AS FormattedDate -- standard date formatting for local culture
FROM Sales.Invoices;

-- Functions can be nested together
SELECT FORMAT(GETDATE(), 'MMMM dd, yyyy "at" hh:mm');