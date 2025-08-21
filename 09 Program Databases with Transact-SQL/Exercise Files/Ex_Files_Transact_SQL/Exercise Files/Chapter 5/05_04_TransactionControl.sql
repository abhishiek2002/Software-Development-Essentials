-- Transaction control with TRY...CATCH
USE WideWorldImporters;
GO

SELECT * FROM Warehouse.Colors
ORDER BY ColorID DESC;
GO

-- Add error handling to a transaction

BEGIN TRANSACTION;

EXEC Warehouse.uspInsertColor 'Unicorn Pink';
EXEC Warehouse.uspInsertColor 'Kraken Blue';

COMMIT TRANSACTION;


-- View data
SELECT * FROM Warehouse.Colors
ORDER BY ColorID DESC;
GO