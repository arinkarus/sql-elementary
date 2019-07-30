/*Напишите запрос, который выводит список продуктов из категорий Beverages и Seafood,
которые можно заказать у поставщиков (Discontinued) и которые остались на складе 
в количестве меньше 20 штук. Результирующая таблица должна иметь колонки ProductName, 
UnitsInStock, ContactName и Phone поставщика. 
Строки таблицы должны быть отсортированы по значению складского запаса.*/

SELECT [ProductName], [UnitsInStock], [Sp].[Phone] AS [Supplier Phone], [Sp].[ContactName]
FROM [dbo].[Products] AS [P] 
	INNER JOIN [dbo].[Categories] AS [Ct]
		ON [Ct].[CategoryID] = [P].[CategoryID]
	INNER JOIN [dbo].[Suppliers] AS [Sp]
		ON [Sp].[SupplierID] = [P].[ProductID]
    WHERE [Ct].CategoryName IN ('Beverages', 'Seafood')
		AND
    [P].[Discontinued] = 1
		AND
	[P].[UnitsInStock] < 20