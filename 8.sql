/*
�������� ������, ������� ������� ���������� ��������-���������� � �������,
� ������� ���� 10 � ����� ����������.
�������������� ������� ������ ����� ������� Country � CustomerCount, 
������ ������� ������ ���� ������������� � �������� ������� �� ���������� ���������� � ������.
*/
SELECT COUNT(*) AS [CustomerCount], [Country] FROM [dbo].[Customers] 
	GROUP BY [Country]
	HAVING COUNT(*) >= 10
	ORDER BY COUNT(*) DESC