CREATE VIEW dbo.ContactDirectory AS 
SELECT CompanyName, ContactName, Phone 
FROM Customers
UNION ALL
SELECT 'Northwind Traders',
FirstName + ' ' + LastName, Extension
FROM Employees

SELECT * FROM dbo.ContactDirectory 
WHERE ContactName LIKE 'A%'