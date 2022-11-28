EXEC dbo.CustOrderHist 'BOLID'

SELECT * FROM Customers

EXEC dbo.SalesByCategory 'Seafood', '1997'
EXEC dbo.SalesByCategory
@OrdYear = 1997, @CategoryName = 'Seafood'