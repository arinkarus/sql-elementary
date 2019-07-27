/*
Напишите запрос, который выводит список заказчиков в виде таблицы, 
состоящей из двух столбцов CustomerID и CompanyName. 
Строки таблицы должны быть отсортированы по коду заказчика.
*/
SELECT [CustomerId], [CompanyName] FROM [dbo].[Customers] ORDER BY [PostalCode]