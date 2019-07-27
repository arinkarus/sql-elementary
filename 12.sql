/*
�������� ������, ������� ������� ����� ����� ������� ������� 
��� ��������-���������� ��� �������,
��������� ������ ������� ������ ��� ����� �������
�������� ��������� ������ ���� �������, 
� ����� ���� �������� ������ ������ ��������� �� ������ �������� ���� 1996 ����. 
�������������� ������� ������ ����� ������� CustomerID � FreightSum,
������ ������� ������ ���� ������������� �� ����� ������� �������.
*/
SELECT [C].[CustomerID], SUM([O].[Freight]) FROM [dbo].[Customers] AS [C]
   INNER JOIN [dbo].[Orders] AS [O]
   ON [C].[CustomerID] = [O].[CustomerId]
   WHERE Day([ShippedDate]) >= 15 AND Month([ShippedDate]) = 7 AND YEAR([ShippedDate]) = 1996
		AND [Freight] >= (SELECT AVG([Freight]) FROM [dbo].[Orders])
   GROUP BY [C].[CustomerID]
GO