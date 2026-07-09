CREATE TABLE dbo.Employees (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    HireDate DATE NOT NULL,
    Salary DECIMAL(10,2),
    IsActive BIT DEFAULT 1);

CREATE TABLE dbo.Products (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    Stock INT NOT NULL);

CREATE TABLE dbo.Customers (
    CustomerID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    City VARCHAR(50),
    JoinDate DATE DEFAULT GETDATE()
);

CREATE TABLE dbo.Orders (
    OrderID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID INT NOT NULL,
    OrderDate DATE NOT NULL DEFAULT GETDATE(),
    TotalAmount DECIMAL(10,2) NOT NULL);
    