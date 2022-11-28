SELECT COUNT (*) as NumberOfOrders FROM Orders
SELECT COUNT(*) as NumberOfOrders,
MIN(OrderDate) as EarliestOrder,
MAX(OrderDate) as LatestOrder
FROM Orders