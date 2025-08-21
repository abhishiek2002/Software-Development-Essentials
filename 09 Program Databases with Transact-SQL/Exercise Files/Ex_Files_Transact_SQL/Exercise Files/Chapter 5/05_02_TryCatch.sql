-- Capture errors with TRY and CATCH
USE WideWorldImporters;
GO

-- Error handling with TRY CATCH
BEGIN TRY
    -- Code to execute
END TRY
BEGIN CATCH
    -- Code to run if TRY block encounters an error
END CATCH
    -- Code to run after TRY and CATCH



-- Attempt to insert a row without supplying values for all required fields
BEGIN TRY
    INSERT INTO Application.People (FullName) VALUES ('Adam');
END TRY
BEGIN CATCH
    PRINT 'The person was not added to Application.People'
END CATCH;



-- Return information about the error using functions
BEGIN TRY
    INSERT INTO Application.People (FullName) VALUES ('Adam');
END TRY
BEGIN CATCH
    SELECT ERROR_NUMBER() AS 'Error Number',
           ERROR_MESSAGE() AS 'Error Message',
           ERROR_SEVERITY() AS 'Error Severity',
           ERROR_STATE() AS 'Error State',
           ERROR_LINE() AS 'Error Line',
           ERROR_PROCEDURE() AS 'Error Procedure',
           XACT_STATE() AS 'Transaction State';
END CATCH;



-- Use IF...ELSE or CASE statements to perform different tasks in CATCH block
BEGIN TRY
--    INSERT INTO Application.People (FullName) VALUES ('Adam');
--    SELECT 1/0;
--    EXECUTE Warehouse.uspInsertColor 'Blue';
END TRY
BEGIN CATCH
    BEGIN IF ERROR_NUMBER() = 515
        PRINT 'Please supply values for all required columns'
    ELSE IF ERROR_NUMBER() = 8134
        PRINT 'You cannot divide a number by zero'
    ELSE IF ERROR_NUMBER() = 2627
        PRINT 'That color is already in the table'
    ELSE PRINT 'An unknown error occured'
    END;
END CATCH;