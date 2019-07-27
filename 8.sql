/*
Напишите запрос, который выводит количество компаний-заказчиков в странах,
в которых есть 10 и более заказчиков.
Результирующая таблица должна иметь колонки Country и CustomerCount, 
строки которой должны быть отсортированы в обратном порядке по количеству заказчиков в стране.
*/
SELECT COUNT(*) AS [CustomerCount], [Country] FROM [dbo].[Customers] 
	GROUP BY [Country]
	HAVING COUNT(*) >= 10
	ORDER BY COUNT(*) DESC