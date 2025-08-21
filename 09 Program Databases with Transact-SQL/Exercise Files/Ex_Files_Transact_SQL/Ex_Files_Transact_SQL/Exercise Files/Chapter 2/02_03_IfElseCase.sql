-- Function logic
USE WideWorldImporters;
GO

-- IF ELSE
CREATE OR ALTER FUNCTION Application.EvenOdd (@InputNumber INT)
RETURNS char(10)
AS
BEGIN
    DECLARE @Output char(10);
    BEGIN IF @InputNumber % 2 = 0
        SET @Output = 'Even'
        ELSE SET @Output = 'Odd'
    END;
    RETURN @Output;
END;
GO

-- Use the IF ELSE function
SELECT Application.EvenOdd(2) AS '2',
    Application.EvenOdd(3) AS '3';
GO

SELECT OrderID AS InputNumber,
    Application.EvenOdd(OrderID) AS 'Even or Odd'
FROM Sales.Orders;
GO


-- CASE statement
CREATE OR ALTER FUNCTION Application.Weekend (@Day char(10))
RETURNS char(3)
AS
BEGIN
    DECLARE @Output char(3);
    SET @Output =
        CASE WHEN @Day = 'Saturday' THEN 'Yes'
            WHEN @Day = 'Sunday' THEN 'Yes'
            ELSE 'No'
        END;
    RETURN @Output;
END;
GO

-- Use the CASE function
SELECT Application.Weekend('Sunday') AS Sun,
    Application.Weekend('Monday') AS Mon,
    Application.Weekend('Tuesday') AS Tue,
    Application.Weekend('Wednesday') AS Wed,
    Application.Weekend('Thursday') AS Thur,
    Application.Weekend('Friday') AS Fri,
    Application.Weekend('Saturday') AS Sat
;
