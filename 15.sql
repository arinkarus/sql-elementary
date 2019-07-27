/*
Напишите запрос, который выводит список компаний-заказчиков из Лондона, 
которые делали заказы у сотрудников лондонского офиса и заказали доставку через службу Speedy Express.
Результирующая таблица должна иметь колонки Customer и Employee, 
колонка Employee должна содержать FirstName и LastName сотрудника.
*/
SELECT [C].[CustomerId], CONCAT([Emp].[FirstName], [Emp].[LastName]) AS [Employee],
 [Emp].[City] AS [Employees City], [C].[City] AS [Customers City], [Sh].[CompanyName] AS [Shipping Service]
 FROM [dbo].[Customers] AS [C]
	INNER JOIN [dbo].[Orders] AS [O] 
		ON [C].[CustomerID] = [O].[CustomerID]
	INNER JOIN [dbo].[Shippers] AS [Sh]
	    ON [O].[ShipVia] = [Sh].[ShipperID]
	INNER JOIN [dbo].[Employees] AS [Emp]
		ON [Emp].[EmployeeID] = [O].[EmployeeID]
    WHERE 
		[Sh].[CompanyName] = 'Speedy Express'
			AND
		[C].[City] = 'London'
			AND 
		[Emp].[City] = 'London'