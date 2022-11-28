SELECT CompanyName, ContactName, Phone 
FROM Customers

UNION ALL

SELECT CompanyName, ContactName, Phone
FROM Suppliers

SELECT 'Northwind Traders',
FirstName + ' ' + LastName,  Extension 
FROM Employees