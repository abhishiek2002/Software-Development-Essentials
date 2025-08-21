-- Stored Procedures output parameters
USE WideWorldImporters;
GO

-- Create an output variable to pass a message to the calling application
CREATE OR ALTER PROCEDURE Application.uspSimpleProcedure (@OutputMessage AS nvarchar(200) OUTPUT)
AS
SET @OutputMessage = N'This message was returned by the stored procedure on ' + FORMAT(GETDATE(), 'd')
;
GO

DECLARE @MyLocalMessage nvarchar(200);
EXEC Application.uspSimpleProcedure
    @OutputMessage = @MyLocalMessage OUTPUT;
PRINT @MyLocalMessage;
GO