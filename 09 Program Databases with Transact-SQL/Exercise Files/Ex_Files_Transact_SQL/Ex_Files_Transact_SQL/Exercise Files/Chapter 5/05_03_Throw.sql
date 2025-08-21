-- Generate errors with THROW
USE WideWorldImporters;
GO


-- Create a custom error message
BEGIN TRY
    SELECT TOP 1 FullName FROM Application.People;
    THROW 50001, 'Throw sent this message to the CATCH block', 1;
END TRY
BEGIN CATCH
    PRINT 'ERROR ' + CONVERT(varchar(10), ERROR_NUMBER()) + ': ' + ERROR_MESSAGE();
END CATCH



-- Use THROW to raise exception again
BEGIN TRY
    INSERT INTO Application.People (FullName) VALUES ('Adam');
END TRY
BEGIN CATCH
    THROW;
END CATCH;