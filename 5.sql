/*
�������� ������, 
������� ������� ������ ��������������� ��������,
��� ������� ������ ���� ���������� (dbo.Orders.RequiredDate) � �������� 1996 ����. 
������ ������ ���� ������������ � ���������� �������.
*/
SELECT [CustomerID], [RequiredDate] FROM [dbo].[Orders]
	WHERE Month([RequiredDate]) = 9 AND Year([RequiredDate]) = 1996 
	ORDER BY [CustomerId] ASC