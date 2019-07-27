/*
Напишите запрос, 
который выводит список идентификаторов компаний,
для которых заказы были доставлены (dbo.Orders.RequiredDate) в сентябре 1996 года. 
Список должен быть отсортирован в алфавитном порядке.
*/
SELECT [CustomerID], [RequiredDate] FROM [dbo].[Orders]
	WHERE Month([RequiredDate]) = 9 AND Year([RequiredDate]) = 1996 
	ORDER BY [CustomerId] ASC