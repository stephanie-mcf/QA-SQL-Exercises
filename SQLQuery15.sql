SELECT COUNT (OrderID) as NumberOfOrders
FROM Orders

SELECT CustomerID, COUNT(OrderID) AS NumberOfOrders
FROM dbo.Orders
GROUP BY CustomerID