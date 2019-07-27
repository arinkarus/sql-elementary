/*
�������� ������, ������� ������� ���������� ��������-����������, 
������� ��������� � �������, ������������� ���� ������������� �������.
 �������������� ������� ������ �������� �� ���� ������� City � CustomerCount.
*/
SELECT [City], COUNT([CustomerId]) FROM [dbo].[Customers] 
	WHERE [Country] IN ('Denmark', 'Ireland', 'Sweden')
	GROUP BY [City] 
GO

