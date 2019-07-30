/*Напишите запрос, который выводит общую сумму фрахтов заказов для компаний-заказчиков для заказов,
стоимость фрахта которых больше или равна средней величине стоимости фрахта всех заказов,
а также дата отгрузки заказа должна находится во второй половине июля 1996 года. 
Результирующая таблица должна иметь колонки CustomerID и FreightSum, 
строки которой должны быть отсортированы по сумме фрахтов заказов.*/

Use northwind
GO

SET DATEFORMAT YMD;
GO

SELECT [C].[CustomerID], SUM([O].[Freight]) FROM [dbo].[Customers] AS [C]
   INNER JOIN [dbo].[Orders] AS [O]
   ON [C].[CustomerID] = [O].[CustomerId]
   WHERE [ShippedDate] >= CONVERT(datetime, '1996-07-15')
		AND [Freight] >= (SELECT AVG([Freight]) FROM [dbo].[Orders])
   GROUP BY [C].[CustomerID]
GO

