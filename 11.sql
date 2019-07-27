/*
Напишите запрос, который выводит EmployeeID 
предпоследнего нанятого компанией сотрудника. 
Используйте ключевые слова OFFSET и FETCH.
*/
SELECT [EmployeeId] FROM [Employees]
	ORDER BY [HireDate] DESC OFFSET 1 ROWS FETCH NEXT 1 ROWS ONLY