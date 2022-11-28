SELECT ProductName, CategoryName
FROM Products 
JOIN Categories 
ON Products.CategoryID = Categories.CategoryID

SELECT * FROM Products
SELECT * FROM Suppliers 
SELECT * FROM Categories 

SELECT p.ProductName, s.CompanyName, c.CategoryName 
FROM Products AS p
JOIN Categories AS c
ON p.CategoryID = c.CategoryID
JOIN Suppliers AS s
ON p.SupplierID = s.SupplierID

SELECT * FROM Orders
SELECT * FROM Customers 

SELECT o.OrderID, c.CustomerID FROM
Orders AS o 
RIGHT OUTER JOIN
CUSTOMERS AS c 
ON o.CustomerID = c.CustomerID
WHERE o.OrderID IS NULL

SELECT * FROM Employees 

CREATE VIEW dbo.ReportsToM AS (
SELECT e.FirstName + ' ' +  e.LastName AS EmployeeName, m. FirstName + ' ' + m.LastName AS ManagerName
FROM Employees AS e
JOIN Employees AS m 
ON e.ReportsTo = m.EmployeeID
)
GO 

SELECT * FROM dbo.ReportsToM

SELECT country FROM customers
UNION ALL
SELECT country FROM employees

-- Find countries that have both customers and employees
SELECT country FROM customers 
INTERSECT
SELECT country FROM employees

-- Countries with customers but not staff 
SELECT country FROM customers
EXCEPT
SELECT country FROM employees