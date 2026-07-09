-- Insert a single row
INSERT INTO dbo.Employees (FirstName, LastName, HireDate, Salary)
VALUES ('John', 'Doe', '2026-07-01', 60000.00);

--Insert multiple rows
INSERT INTO dbo.Employees (FirstName, LastName, HireDate, Salary)
VALUES ('Jane', 'Smith', '2026-07-02', 65000.00),
       ('Mike', 'Johnson', '2026-07-03', 62000.00);

--insert a product
INSERT INTO dbo.Products (ProductName, Price, Stock)
VALUES ('Wireless Mouse', 25.99, 150);

-- Insert 3 products
INSERT INTO dbo.Products (ProductName, Price, Stock)
VALUES ('Keyboard', 45.50, 75),
('Monitor', 199.99, 30),
('USB Cable', 8.75, 200);

-- Inser sample customers
INSERT INTO dbo.Customers (FirstName, LastName, Email, City)
VALUES ('Alice', 'Brown', 'alice@example.com', 'New York'),
('Bob', 'Davis', 'bob@example.com', 'Los Angeles'),
('Charlie', 'Evans', 'charlie@example.com', 'Chicago'),
('Diana', 'Foster', 'diana@example.com', 'New York'),
('Eve', 'Garcia', 'eve@example.com', 'Los Angeles');
-- Insert sample orders
INSERT INTO dbo.Orders (CustomerID, OrderDate, TotalAmount)
VALUES (1, '2026-07-01', 150.00),
(2, '2026-07-02', 89.99),
(3, '2026-07-03', 200.50),
(1, '2026-07-04', 45.20),
(2, '2026-07-05', 320.00),
(4, '2026-07-06', 75.00);