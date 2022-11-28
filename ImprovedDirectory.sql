SELECT CompanyName, LEFT (CompanyName, CHARINDEX (' ', ContactName)) AS FirstName, 
SUBSTRING (ContactName, 
CHARINDEX (' ', ContactName) + 1, 50) AS LastName,
Phone
FROM Customers

UNION ALL

SELECT CompanyName,
LEFT (ContactName, CHARINDEX (' ', ContactName))
AS FirstName,
SUBSTRING(ContactName, CHARINDEX(' ', ContactName) + 1, 50)
AS LastName,
Phone
FROM Suppliers
UNION ALL
SELECT 'Northwind Traders', FirstName, 
LastName, Extension
FROM Employees 
ORDER BY LastName