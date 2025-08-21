-- Transaction control with TRY...CATCH
USE WideWorldImporters;
GO

SELECT * FROM Warehouse.Colors
ORDER BY ColorID DESC;
GO

-- Add error handling to a transaction

BEGIN TRY
	BEGIN TRANSACTION;

		EXEC Warehouse.uspInsertColor 'Hydra Green';
		EXEC Warehouse.uspInsertColor 'Hydra Green';

	COMMIT TRANSACTION;
END TRY
BEGIN CATCH
	ROLLBACK TRANSACTION;
	PRINT 'The transaction was rolled back and no rows were saved. ' +ERROR_MESSAGE();
END CATCH;

-- View data
SELECT * FROM Warehouse.Colors
ORDER BY ColorID DESC;
GO