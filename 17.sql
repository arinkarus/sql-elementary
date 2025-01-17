﻿/*Вывести на какую сумму были сделаны заказы, 
которые доставлялись службами доставки*/

USE northwind
GO

SELECT [Sh].[CompanyName] AS [Shipping Service Name], 
	SUM([O].[Freight]) AS [Summary Freight]
FROM [dbo].[Shippers] AS [Sh]
	INNER JOIN [dbo].[Orders] AS [O]
		ON [Sh].[ShipperID] = [O].[ShipVia]
    INNER JOIN [dbo].[Employees] AS [Emp]
	    ON [O].[EmployeeID] = [Emp].[EmployeeID]
    GROUP BY [CompanyName]
GO