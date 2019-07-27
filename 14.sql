/*Переписать с группировкой*/
SELECT DISTINCT s.CompanyName,
(SELECT min(t.UnitPrice) FROM dbo.Products as t WHERE t.SupplierID = p.SupplierID) as MinPrice,
(SELECT max(t.UnitPrice) FROM dbo.Products as t WHERE t.SupplierID = p.SupplierID) as MaxPrice
FROM dbo.Products AS p
INNER JOIN dbo.Suppliers AS s ON p.SupplierID = s.SupplierID
ORDER BY s.CompanyName
GO

SELECT [S].[CompanyName], MIN([P].[UnitPrice]) AS [MinPrice], MAX([P].[UnitPrice]) AS [MaxPrice]
FROM [dbo].[Suppliers] AS [S]
	INNER JOIN [dbo].[Products] AS [P] 
		ON [P].[SupplierID] = [S].[SupplierID]
	GROUP BY [CompanyName]
GO