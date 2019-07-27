/*�������� ������, ������� ������� ������ ��������� �� ��������� Beverages � Seafood,
������� ����� �������� � ����������� (Discontinued) � ������� �������� �� ������ 
� ���������� ������ 20 ����. �������������� ������� ������ ����� ������� ProductName, 
UnitsInStock, ContactName � Phone ����������. 
������ ������� ������ ���� ������������� �� �������� ���������� ������.*/

SELECT [ProductName], [UnitsInStock], [Sp].[Phone] AS [Supplier Phone], [Sp].[ContactName]
FROM [dbo].[Products] AS [P] 
	INNER JOIN [dbo].[Categories] AS [Ct]
		ON [Ct].[CategoryID] = [P].[CategoryID]
	INNER JOIN [dbo].[Suppliers] AS [Sp]
		ON [Sp].[SupplierID] = [P].[ProductID]
    WHERE [Ct].CategoryName IN ('Beverages', 'Seafood')
		AND
    [P].[Discontinued] = 1
		AND
	[P].[UnitsInStock] < 20