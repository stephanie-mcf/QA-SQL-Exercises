SELECT 
ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, UnitPrice * UnitsInStock AS CurrentStockValue,
(UnitsInStock + UnitsOnOrder) * UnitPrice AS FutureStockValue
FROM
dbo.Products
WHERE 
(UnitsInStock + UnitsOnOrder) * UnitPrice >2000

SELECT DISTINCT Country FROM Suppliers ORDER BY Country ASC
SELECT TOP 15 WITH TIES * FROM Products ORDER BY UnitPrice DESC

