-- Automatically roll back transactions

SELECT * FROM Warehouse.Colors
ORDER BY ColorID DESC;
GO

-- Explore SQL Server's default transaction behavior
BEGIN TRANSACTION;

EXEC Warehouse.uspInsertColor 'Burnished Bronze';
EXEC Warehouse.uspInsertColor 'Burnished Bronze';

COMMIT TRANSACTION;

-- View data
SELECT * FROM Warehouse.Colors
ORDER BY ColorID DESC;
GO

-- Use XACT_ABORT to tell SQL Server to automatically rollback transactions when run-time errors are encountered.

-- Check status of XACT_ABORT server setting
SELECT CASE WHEN (16384 & @@OPTIONS) = 16384 THEN 'ON'
       ELSE 'OFF'
       END AS XACT_ABORT;

-- Enable XACT_ABORT
SET XACT_ABORT ON; -- or OFF

BEGIN TRANSACTION;

EXEC Warehouse.uspInsertColor 'Glittering Gold';
EXEC Warehouse.uspInsertColor 'Glittering Gold';

COMMIT TRANSACTION;

-- View data
SELECT * FROM Warehouse.Colors
ORDER BY ColorID DESC;
GO

-- Disable XACT_ABORT
SET XACT_ABORT OFF;