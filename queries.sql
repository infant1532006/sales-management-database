SELECT * FROM Customers;
SELECT * FROM Orders;

SELECT o.orderNumber, c.customerName, o.status
FROM Orders o
JOIN Customers c
ON o.customerNumber = c.customerNumber;

SELECT p.productName, pl.productLine
FROM Products p
JOIN ProductLines pl
ON p.productLine = pl.productLine;
