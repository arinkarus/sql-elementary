/*
Ќапишите запрос, который выводит количество компаний-заказчиков, 
которые наход€тс€ в городах, принадлежащих трем скандинавским странам.
 –езультирующа€ таблица должна состо€ть из двух колонок City и CustomerCount.
*/
SELECT [City], COUNT([CustomerId]) FROM [dbo].[Customers] 
	WHERE [Country] IN ('Denmark', 'Ireland', 'Sweden')
	GROUP BY [City] 
GO

