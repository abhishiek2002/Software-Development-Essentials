-- If you did not complete the Chapter 3 challenge,
-- set up the challenge table and populate rows
DROP TABLE IF EXISTS dbo.BankAccounts;
CREATE TABLE dbo.BankAccounts (
    AccountID INT PRIMARY KEY,
    Balance decimal(10,2)
);
GO
INSERT INTO dbo.BankAccounts
    VALUES (1, 100.00), (2, 200.00), (3, 300.00);
GO
SELECT * FROM dbo.BankAccounts;
GO

-- Create a stored procedure that contains a transaction for transferring funds
-- Then use the stored procedure to transfer 50.00 from Account 1 to Account 3.

CREATE OR ALTER PROCEDURE dbo.TransferFunds (@FromAccount AS INT, @ToAccount AS INT, @Amount AS decimal(10,2))
AS
SET XACT_ABORT ON;
BEGIN TRANSACTION;

UPDATE dbo.BankAccounts
	SET Balance -= @Amount
	WHERE AccountID = @FromAccount;

UPDATE dbo.BankAccounts
	SET Balance += @Amount
	WHERE AccountID = @ToAccount;

COMMIT TRANSACTION;
SET XACT_ABORT OFF;
;
GO

EXEC dbo.TransferFunds 1, 3, 50.00;

SELECT * FROM dbo.BankAccounts;