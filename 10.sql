/*
Напишите запрос, который выводит EmployeeID
предпоследнего нанятого компанией 
сотрудника. 
Используйте подзапрос для исключения последнего нанятого сотрудника. */
SELECT TOP(1) [EmployeeID] FROM [Employees] 
	WHERE [EmployeeID] != 
		(SELECT TOP(1) [EmployeeID] FROM [Employees] ORDER BY [HireDate] DESC) 
		ORDER BY [HireDate] DESC
GO

/*to check*/
SELECT [EmployeeID], [HireDate] FROM [Employees] ORDER BY [HireDate] DESC
GO
