-- Leverage view objects with indexes
USE WideWorldImporters;
GO

-- Review stock item information
SELECT * FROM Warehouse.StockItems;
SELECT * FROM Purchasing.Suppliers;
GO

-- Get a user friendly look at the information
        -- Create a schemabound view
        -- CREATE VIEW Warehouse.StockItemDetails
        -- WITH SCHEMABINDING
		-- AS
SELECT
    StockItemStockGroups.StockItemStockGroupID,
    StockItems.StockItemName,
    StockItemHoldings.QuantityOnHand,
    StockGroups.StockGroupName,
    Colors.ColorName,
    StockItems.UnitPrice,
    StockItems.SupplierID
  FROM Warehouse.StockItemStockGroups
    INNER JOIN Warehouse.StockItems
        ON StockItemStockGroups.StockItemID = StockItems.StockItemID
    INNER JOIN Warehouse.StockGroups
        ON StockItemStockGroups.StockGroupID = StockGroups.StockGroupID
    INNER JOIN Warehouse.Colors
        ON StockItems.ColorID = Colors.ColorID
    INNER JOIN Warehouse.StockItemHoldings
        ON StockItems.StockItemID = StockItemHoldings.StockItemID
;
GO

-- Test the view
SELECT * FROM Warehouse.StockItemDetails;
GO

-- Add an index to the view
CREATE UNIQUE CLUSTERED INDEX IDX_StockItemDetails
   ON Warehouse.StockItemDetails (StockItemStockGroupID, StockItemName, SupplierID);
GO

-- Query the view
SELECT *
    FROM Warehouse.StockItemDetails
      INNER JOIN Purchasing.Suppliers
        ON Suppliers.SupplierID = StockItemDetails.SupplierID
WHERE StockItemDetails.SupplierID = 5;