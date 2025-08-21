-- Create a transaction
USE WideWorldImporters;
GO

-- Procedure created earlier in course
CREATE OR ALTER PROCEDURE Warehouse.uspInsertColor (@Color AS nvarchar(100))
AS
    DECLARE @ColorID INT
    SET @ColorID = (SELECT MAX(ColorID) FROM Warehouse.Colors)+1;
    INSERT INTO Warehouse.Colors (ColorID, ColorName, LastEditedBy)
        VALUES (@ColorID, @Color, 1);
    SELECT * FROM Warehouse.Colors
        WHERE ColorID = @ColorID
        ORDER BY ColorID DESC;
;
GO

-- Open a new transaction
BEGIN TRANSACTION FirstTransaction WITH MARK; -- or BEGIN TRAN

-- Use the previously developed stored procedure to add a color to the table
EXEC Warehouse.uspInsertColor 'Sunset Orange';
EXEC Warehouse.uspInsertColor 'Tomato Red';

-- View temporary data
SELECT * FROM Warehouse.Colors
ORDER BY ColorID DESC;
GO

-- Pick one command to run next
ROLLBACK TRANSACTION FirstTransaction; -- Undo the data input
COMMIT TRANSACTION FirstTransaction; -- Finalize the data input

-- View final data
SELECT * FROM Warehouse.Colors
ORDER BY ColorID DESC;
GO