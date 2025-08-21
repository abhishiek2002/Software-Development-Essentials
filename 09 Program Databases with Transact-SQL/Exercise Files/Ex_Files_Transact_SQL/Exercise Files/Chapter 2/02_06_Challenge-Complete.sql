-- Create a function to analyze temperatures
-- < 3.5 'too cold'
-- > 4 'too hot'
-- everything else 'just right'

-- Evaluate data
SELECT * FROM Warehouse.ColdRoomTemperatures;
GO

-- Create function to describe temperature range
CREATE FUNCTION Warehouse.TempDescription (@Temperature decimal(10,2))
RETURNS char(10)
AS
BEGIN
	DECLARE @Description char(10);
	SET @Description = 
		CASE WHEN @Temperature < 3.5 THEN 'Too Cold'
			WHEN @Temperature > 4 THEN 'Too Hot'
			ELSE 'Just Right'
		END;
	RETURN @Description;
END;
GO

-- Test Function
SELECT ColdRoomTemperatureID,
	ColdRoomSensorNumber,
	Temperature,
	Warehouse.TempDescription(Temperature) AS 'Temperature Description'
FROM Warehouse.ColdRoomTemperatures;

SELECT ColdRoomTemperatureID,
	ColdRoomSensorNumber,
	Temperature
FROM Warehouse.ColdRoomTemperatures
WHERE Warehouse.TempDescription(Temperature) = 'Just Right';
