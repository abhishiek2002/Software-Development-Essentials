-- Implicit data type conversions
USE WideWorldImporters;
GO

-- Implicit conversion between data types
DECLARE @var1 INT;
DECLARE @var2 CHAR(1);
SET @var1 = 1;
SET @var2 = '2';
SELECT @var1 + @var2 AS Result

-- Explicit conversion between types
-- SELECT CONVERT(CHAR(1), @var1) + @var2;
-- SELECT CAST(@var1 AS CHAR(1)) + @var2;



-- Implicit conversion precedence
DECLARE @var3 INT;
DECLARE @var4 DECIMAL(10,2);
SET @var3 = 1000;
SET @var4 = 500.50;
SELECT @var3 + @var4;