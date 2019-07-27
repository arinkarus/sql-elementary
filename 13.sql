/*�������� ������, ������� ������� 3 ������ � ���������� ����������, 
������� ���� ������� ����� 1 �������� 1997 ���� ������������ � ���� ���������� � 
������ ����� �������. ����� ��������� �������������� ���
����� ��������� ������� ������ � ������ ��������.
�������������� ������� ������ ����� ������� CustomerID,
ShipCountry � OrderPrice, ������ ������� ������ ���� ������������� 
�� ��������� ������ � �������� �������. */

SELECT TOP(10) [O].[CustomerId], [O].[ShipCountry], 
    ([D].[UnitPrice] - [D].[UnitPrice]  * [D].[Discount]) AS [OrderPrice]
    FROM [dbo].[Orders] AS [O]
	INNER JOIN [dbo].[Order Details] AS [D]
	ON [O].[OrderID] = [D].[OrderID]
	WHERE [O].[OrderDate] >= CONVERT(datetime, '1997-09-01')
		AND [O].[ShipCountry] IN ('Argentina', 'Brazil', 'Venezuela', 'Portugal')
	ORDER BY [OrderPrice] DESC
GO

/*���� ���� ����� �� ��������� ����� ������� ������, 
�� ������������� �� �����������*/

WITH orders AS (
	SELECT TOP(10) [O].[CustomerId], [O].[ShipCountry], 
		([D].[UnitPrice] - [D].[UnitPrice]  * [D].[Discount]) AS [OrderPrice]
		FROM [dbo].[Orders] AS [O]
		INNER JOIN [dbo].[Order Details] AS [D]
		ON [O].[OrderID] = [D].[OrderID]
		WHERE [O].[OrderDate] >= CONVERT(datetime, '1997-09-01')
		AND [O].[ShipCountry] IN ('Argentina', 'Brazil', 'Venezuela', 'Portugal')
	    ORDER BY [OrderPrice] DESC
)

SELECT * FROM orders ORDER BY [OrderPrice]