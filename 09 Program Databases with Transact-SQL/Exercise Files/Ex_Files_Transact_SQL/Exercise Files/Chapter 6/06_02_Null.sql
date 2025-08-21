-- Understand NULL values
USE WideWorldImporters;
GO

-- Test for equality
DECLARE @varA INT;
DECLARE @varB INT;
SET @varA = 1;
SET @varB = 2;
SELECT CASE WHEN (@varA = @varB)
    THEN 'Equal'
    ELSE 'Not Equal'
    END AS 'Equality';
;


-- Consider avoiding nulls by adding an excessively out-of-range default value to table designs
CREATE TABLE Birthdays (
    PersonName nvarchar(100) NOT NULL,
    Birthday date NOT NULL DEFAULT '1/1/1800'
)
GO
INSERT INTO Birthdays (PersonName)
    VALUES ('Bethany');
INSERT INTO Birthdays (PersonName, Birthday)
    VALUES ('Jin', '5/17/1982');
GO
SELECT * FROM Birthdays;