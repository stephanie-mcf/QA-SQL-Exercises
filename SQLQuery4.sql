SELECT 
OrderID, CustomerID, OrderDate
FROM
Orders
WHERE
CustomerID IN ('ALFKI', 'ERNSH', 'SIMOB') 
AND
OrderDate BETWEEN '1 Aug 1997' AND '31 Aug 1997'