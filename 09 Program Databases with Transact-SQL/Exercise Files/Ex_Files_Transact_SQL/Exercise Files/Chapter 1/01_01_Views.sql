-- Save a query as a view object
USE WideWorldImporters;
GO

-- Review the data
SELECT TOP 1 * FROM Purchasing.Suppliers;
SELECT * FROM Purchasing.SupplierCategories
    WHERE SupplierCategoryID = 2;
SELECT * FROM Application.People
    WHERE PersonID = 21 OR PersonID = 22;
GO

-- Create two VIEWS to explore supplier details in different ways
-- CREATE VIEW Purchasing.SupplierDetailColumns
-- AS
SELECT
    Suppliers.SupplierName,
    SupplierCategories.SupplierCategoryName,
    PrimaryContact.FullName AS PrimaryContact,
    PrimaryContact.PhoneNumber AS PrimaryPhone,
    PrimaryContact.EmailAddress AS PrimaryEmail,
    AlternateContact.FullName AS AlternateContact,
    AlternateContact.PhoneNumber AS AlternatePhone,
    AlternateContact.EmailAddress AS AlternateEmail
FROM Purchasing.Suppliers
    INNER JOIN Purchasing.SupplierCategories
        ON Suppliers.SupplierCategoryID = SupplierCategories.SupplierCategoryID
    INNER JOIN Application.People AS PrimaryContact
        ON Suppliers.PrimaryContactPersonID = PrimaryContact.PersonID
    INNER JOIN Application.People AS AlternateContact
        ON Suppliers.AlternateContactPersonID = AlternateContact.PersonID
;
GO

-- CREATE VIEW Purchasing.SupplierDetailRows
-- AS
SELECT
    Suppliers.SupplierName,
    SupplierCategories.SupplierCategoryName,
    'Primary Contact' AS ContactType,
    People.FullName AS Contact,
    People.PhoneNumber AS Phone,
    People.EmailAddress AS Email
FROM Purchasing.Suppliers
    INNER JOIN Purchasing.SupplierCategories
        ON Suppliers.SupplierCategoryID = SupplierCategories.SupplierCategoryID
    INNER JOIN Application.People
        ON Suppliers.PrimaryContactPersonID = People.PersonID
UNION
SELECT
    Suppliers.SupplierName,
    SupplierCategories.SupplierCategoryName,
    'Alternate Contact' AS ContactType,
    People.FullName AS Contact,
    People.PhoneNumber AS Phone,
    People.EmailAddress AS Email
FROM Purchasing.Suppliers
    INNER JOIN Purchasing.SupplierCategories
        ON Suppliers.SupplierCategoryID = SupplierCategories.SupplierCategoryID
    INNER JOIN Application.People
        ON Suppliers.AlternateContactPersonID = People.PersonID
;
GO

-- Test the views
SELECT * FROM Purchasing.SupplierDetailColumns;
SELECT * FROM Purchasing.SupplierDetailRows;
