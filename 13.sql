/*Напишите запрос, который выводит 3 заказа с наибольшей стоимостью, 
которые были созданы после 1 сентября 1997 года включительно и были доставлены в 
страны Южной Америки. 
Общая стоимость рассчитывается как
сумма стоимости деталей заказа с учетом дисконта.
Результирующая таблица должна иметь колонки CustomerID,
ShipCountry и OrderPrice, строки которой должны быть отсортированы 
по стоимости заказа в обратном порядке. */

USE northwind
GO

SET DATEFORMAT YMD;
GO

SELECT TOP(10) [O].[CustomerId], [O].[ShipCountry], 
    ([D].[UnitPrice] - [D].[UnitPrice]  * [D].[Discount]) AS [OrderPrice]
    FROM [dbo].[Orders] AS [O]
	INNER JOIN [dbo].[Order Details] AS [D]
	ON [O].[OrderID] = [D].[OrderID]
	WHERE [O].[OrderDate] >= CONVERT(datetime, '1997-09-01')
		AND [O].[ShipCountry] IN ('Argentina', 'Brazil', 'Venezuela', 'Portugal')
	ORDER BY [OrderPrice] DESC
GO

/*Если надо взять по стоимости самые большие заказы, 
но отсортировать по возрастанию*/

WITH orders AS (
	SELECT TOP(10) [O].[CustomerId], [O].[ShipCountry], 
		([D].[UnitPrice] - [D].[UnitPrice]  * [D].[Discount]) AS [OrderPrice]
		FROM [dbo].[Orders] AS [O]
		INNER JOIN [dbo].[Order Details] AS [D]
		ON [O].[OrderID] = [D].[OrderID]
		WHERE [O].[OrderDate] >= CONVERT(datetime, '1997-09-01')
		AND [O].[ShipCountry] IN ('Argentina', 'Brazil', 'Venezuela', 'Portugal')
	    ORDER BY [OrderPrice] DESC
)

SELECT * FROM orders ORDER BY [OrderPrice]
GO