/*
�������� ������, ������� ������� ������ ��������-���������� �� �������, 
������� ������ ������ � ����������� ����������� ����� � �������� �������� ����� ������ Speedy Express.
�������������� ������� ������ ����� ������� Customer � Employee, 
������� Employee ������ ��������� FirstName � LastName ����������.
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