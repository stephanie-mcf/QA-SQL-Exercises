USE Northwind
SELECT * FROM Orders

--SELECT ProductID,ProductName, UnitPrice, UnitsInStock FROM Products
--SELECT ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, UnitPrice * UnitsInStock AS CurrentStockValue, (UnitsInStock + UnitsOnOrder) * UnitPrice AS FuturueStockValue FROM Products
SELECT * FROM Orders WHERE CustomerID IN ('TOMSP', 'VINET', 'HANAR') AND OrderDate >'1996-06-01'

