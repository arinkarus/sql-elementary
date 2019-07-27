/*
Напишите запрос, который выводит EmployeeID последнего нанятого компанией сотрудника.

*/
SELECT TOP(1) [EmployeeId] FROM [dbo].[Employees] ORDER BY [HireDate] DESC