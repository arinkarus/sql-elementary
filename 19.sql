/*Вывести только те продукты, цена которых больше
средней цены в своей категории*/
USE northwind
GO

WITH [average_price_for_categories] AS (
	SELECT [CAT].[CategoryID], AVG([P].[UnitPrice]) AS [Average Price For Category] 
	FROM [dbo].[Categories] AS [CAT]
		INNER JOIN [dbo].[Products] AS [P]
			ON [CAT].[CategoryID] = [P].[CategoryID]
	GROUP BY [CAT].[CategoryID]
)
SELECT [ProductName], [UnitPrice], [CTE].[Average Price For Category] FROM [dbo].[Products] AS [P]
	INNER JOIN [average_price_for_categories] AS [CTE]
	ON [P].[CategoryID] = [CTE].[CategoryID]
	WHERE [p].[UnitPrice] > [CTE].[Average Price For Category]
	ORDER BY [P].[UnitPrice], [P].[ProductName] ASC 
	 