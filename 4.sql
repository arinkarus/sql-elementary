/*
�������� ������, ������� ������� ������ �������� ��������-����������,
������������� � �������� �������: ������, ������, ������, ��������, �����.
������ ������ ���� ������������ �� ����-�������������� �������� � �������� ���������� �������.
*/
SELECT [CompanyName], [City], [SupplierId] FROM [dbo].[Suppliers] 
WHERE [City] IN ('Berlin', 'London', 'Paris', 'Madrid', 'Brussel') ORDER BY [SupplierID] DESC