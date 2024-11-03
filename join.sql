SELECT DISTINCT City FROM Customers;

SELECT SupplierName, Country FROM Suppliers where Country = 'France';

SELECT CustomerName, Address, Country FROM Customers WHERE Country NOT IN ('Spain') and CustomerName like 'A%';

SELECT * FROM Customers WHERE PostalCode IS NULL OR PostalCode = '';