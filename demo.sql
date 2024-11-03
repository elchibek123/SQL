-- Simple Queries:
SELECT ProductName, Price FROM Products;

SELECT DISTINCT Country FROM Customers;

-- SELECT * FROM Orders OFFSET 10 LIMIT 20;
SELECT TOP 20 * FROM Orders WHERE OrderID NOT IN (
    SELECT TOP 10 OrderID FROM Orders ORDER BY OrderDate) ORDER BY OrderID;

SELECT * FROM Orders WHERE OrderDate = #7/5/1996#;

SELECT * FROM Orders WHERE CustomerID IN (1, 10, 4, 17);

-- Aggregate Queries:
SELECT ROUND(AVG(Price), 2) AS AveragePrice FROM Products;

SELECT MAX(Quantity) AS MaxQuantity FROM OrderDetails;

SELECT ROUND(SUM(Quantity) * 28.8664, 2) AS Gross FROM OrderDetails;

SELECT COUNT(CategoryID) AS TotalCategories FROM Categories;

SELECT AVG(DateDiff('yyyy', BirthDate, Date())) AS AverageAge FROM Employees;

-- Subqueries:
SELECT * FROM Customers c WHERE c.CustomerID IN (
    SELECT o.CustomerID FROM Orders o WHERE o.OrderID IN (
        SELECT od.OrderID FROM OrderDetails od WHERE od.Quantity > 3));

SELECT * FROM Products p1 WHERE p1.price > (
    SELECT AVG(p2.price) FROM Products p2);

SELECT * FROM Employees e WHERE e.EmployeeID IN (
    SELECT o.EmployeeID FROM Orders o WHERE o.OrderID = (
        SELECT TOP 1 od.OrderID FROM OrderDetails od ORDER BY od.Quantity DESC));

SELECT * FROM Orders WHERE CustomerID = 3;

SELECT * FROM Customers c WHERE c.CustomerID NOT IN (
    SELECT o.CustomerID FROM Orders o WHERE o.CustomerID = c.CustomerID);

-- Join Queries:
SELECT * FROM Customers c LEFT JOIN Orders o ON c.CustomerID = o.CustomerID;

SELECT p.*, c.CategoryName FROM Products p LEFT JOIN Categories c ON p.CategoryID = c.CategoryID;

SELECT o.OrderID, p.ProductName, od.Quantity FROM (OrderDetails od
LEFT JOIN Orders o ON od.OrderID = o.OrderID)
LEFT JOIN Products p ON od.ProductID = p.ProductID;

SELECT e.*, od.Quantity FROM (Employees e 
LEFT JOIN Orders o ON e.EmployeeID = o.EmployeeID) 
LEFT JOIN OrderDetails od ON o.OrderID = od.OrderID;

SELECT s.SupplierName, p.ProductName, p.Price FROM Suppliers s 
LEFT JOIN Products p ON s.SupplierID = p.SupplierID;