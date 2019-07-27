/*
Напишите запрос, который выводит список названий компаний-заказчиков,
расположенных в следущих городах: Берлин, Лондон, Мадрид, Брюссель, Париж.
Список должен быть отсортирован по коду-идентификатору компании в обратном алфавитном порядке.
*/
SELECT [CompanyName], [City], [SupplierId] FROM [dbo].[Suppliers] 
WHERE [City] IN ('Berlin', 'London', 'Paris', 'Madrid', 'Brussel') ORDER BY [SupplierID] DESC