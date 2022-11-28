SELECT c.CustomerID, c.CompanyName, c.ContactName, c.City, o.OrderID, o.OrderDate, od.ProductID, od.Quantity, p.ProductID, p.ProductName, cg.CategoryID, cg.CategoryName
FROM 
Customers AS c
JOIN Orders AS o
ON c.CustomerID = o.CustomerID
JOIN [Order Details] AS od
ON o.OrderID = od.OrderID
JOIN Products AS p
ON od.ProductID = p.ProductID 
JOIN Categories AS cg
ON p.CategoryID = cg.CategoryID
WHERE CategoryName = 'Seafood' AND c.Country = 'UK'
ORDER BY CompanyName, OrderDate

