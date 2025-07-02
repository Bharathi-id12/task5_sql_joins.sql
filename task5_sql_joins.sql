
USE task5joins;

-- Create Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    City VARCHAR(50)
);

-- Create Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    Product VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
-- Insert into Customers
INSERT INTO Customers VALUES (1, 'Alice', 'Bangalore');
INSERT INTO Customers VALUES (2, 'Bob', 'Hyderabad');
INSERT INTO Customers VALUES (3, 'Charlie', 'Chennai');
INSERT INTO Customers VALUES (4, 'David', 'Delhi');

-- Insert into Orders
INSERT INTO Orders VALUES (101, 1, 'Laptop');
INSERT INTO Orders VALUES (102, 1, 'Mouse');
INSERT INTO Orders VALUES (103, 2, 'Keyboard');
INSERT INTO Orders VALUES (104, 5, 'Monitor'); -- No matching customer
SELECT Customers.CustomerName, Orders.Product
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
SELECT Customers.CustomerName, Orders.Product
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
SELECT Customers.CustomerName, Orders.Product
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
-- Simulating FULL OUTER JOIN using UNION
SELECT Customers.CustomerName, Orders.Product
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID

UNION

SELECT Customers.CustomerName, Orders.Product
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
SELECT * FROM Customers;
SELECT * FROM Orders;
