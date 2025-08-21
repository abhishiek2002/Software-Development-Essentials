-- Transaction Savepoints
USE WideWorldImporters;
GO

-- View the number of open transactions
SELECT @@TRANCOUNT AS 'Open Transactions';

-- Open a new transaction
BEGIN TRANSACTION;

-- View the number of open transactions
SELECT @@TRANCOUNT AS 'Open Transactions';

-- Add a color to the table
EXEC Warehouse.uspInsertColor 'Lemongrass Green';

-- Create a transaction savepoint
SAVE TRANSACTION SavePointOne;

-- View the number of open transactions
SELECT @@TRANCOUNT AS 'Open Transactions';

-- Add a second color to the table
EXEC Warehouse.uspInsertColor 'Galaxy Purple';

-- View temporary data
SELECT * FROM Warehouse.Colors
ORDER BY ColorID DESC;
GO

-- Revert to the savepoint
ROLLBACK TRANSACTION SavePointOne;

-- View the number of open transactions
SELECT @@TRANCOUNT AS 'Open Transactions';

-- Commit the transaction
COMMIT TRANSACTION;

-- View final data
SELECT * FROM Warehouse.Colors
ORDER BY ColorID DESC;
GO