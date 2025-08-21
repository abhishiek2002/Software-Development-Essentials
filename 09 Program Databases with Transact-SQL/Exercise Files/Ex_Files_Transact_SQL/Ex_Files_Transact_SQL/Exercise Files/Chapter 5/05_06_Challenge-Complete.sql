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
BEGIN TRY
BEGIN TRANSACTION;

-- Make sure sending account exists
	BEGIN IF (SELECT AccountID FROM dbo.BankAccounts WHERE AccountID = @FromAccount) IS NULL
		THROW 51000, 'The sending account does not exist', 1;
	END;

-- Make sure the receiveing account exists
	BEGIN IF NOT EXISTS (SELECT AccountID FROM dbo.BankAccounts WHERE AccountID = @ToAccount)
		THROW 52000, 'The receiving account does not exist', 1;
	END;

-- Make sure sending account has enough funds
	BEGIN IF (SELECT Balance FROM dbo.BankAccounts WHERE AccountID = @FromAccount) - @Amount < 0
		THROW 53000, 'The sending account balance is too low to perform the transfer.', 1;
	END;

	UPDATE dbo.BankAccounts
		SET Balance -= @Amount
		WHERE AccountID = @FromAccount;

	UPDATE dbo.BankAccounts
		SET Balance += @Amount
		WHERE AccountID = @ToAccount;

	COMMIT TRANSACTION;
END TRY
BEGIN CATCH
	ROLLBACK TRANSACTION;
	PRINT 'ERROR: ' + ERROR_MESSAGE()
END CATCH;
;
GO

EXEC dbo.TransferFunds 1, 3, 100.00;

SELECT * FROM dbo.BankAccounts;