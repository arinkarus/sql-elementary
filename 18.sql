/*���������� �������� � �����������, 
��� ���� ������ ���� �������, ��� ���������, � ��� ������*/

SELECT [City], [CompanyName], [ContactName], 'Customer' as [Role] FROM [dbo].[Customers]
UNION
SELECT [City], [CompanyName], [ContactName], 'Supplier' as [Role] FROM [dbo].[Suppliers]
ORDER BY [City] ASC