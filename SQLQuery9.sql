SELECT
ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder, UnitPrice * UnitsInStock AS CurrentStockValue, 
(UnitsInstock + UnitsOnOrder) * UnitPrice AS FutureStockValue
FROM
dbo.Products
ORDER BY
FutureStockValue DESC