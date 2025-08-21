-- Stored Procedures input parameters
USE WideWorldImporters;
GO

-- View existing data
SELECT * FROM Warehouse.Colors
ORDER BY ColorID DESC;
GO

-- Create a procedure to insert new rows
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

-- Test the stored procedure
EXEC Warehouse.uspInsertColor @Color = 'Periwinkle Blue'; -- or remove variable name if supplied in order

SELECT * FROM Warehouse.Colors
ORDER BY ColorID DESC;
GO

-- Create another procedure to remove the last color
CREATE OR ALTER PROCEDURE Warehouse.uspRemoveLastColor
AS
    DELETE FROM Warehouse.Colors
    WHERE ColorID = (SELECT MAX(ColorID) FROM Warehouse.Colors);
    -- plus additional database actions to maintain data integrity
;
GO

-- Test the row removal
EXEC Warehouse.uspRemoveLastColor;

SELECT * FROM Warehouse.Colors
ORDER BY ColorID DESC;
GO