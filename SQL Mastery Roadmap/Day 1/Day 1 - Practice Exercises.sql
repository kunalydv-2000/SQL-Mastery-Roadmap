CREATE TABLE Customers 
(CustomerID INT,
 Name VARCHAR(25),
  City VARCHAR(30),
   Age INT,
    Email VARCHAR(50));

INSERT INTO Customers VALUES
(101,'Amit','A City',20,'Amit@gmail.com'),
(102,'Bharat','B City',22,'Bharat@gmail.com'),
(103,'Chetan','C City',24,'Chetan@gmail.com'),
(104,'Dheeraj','D City',29,'Dheeraj@gmail.com'),
(105,'Ekta','E City',27,'Ekta@gmail.com'),
(106,'Fiza','F City',25,'Fiza@gmail.com'),
(107,'Gaurav','G City',27,'Gaurav@gmail.com'),
(108,'Hitesh','H City',19,'Hitesh@gmail.com'),
(109,'Jatin','J City',32,'Jatin@gmail.com'),
(110,'Ketan','K City',39,'Ketan@gmail.com');


--Retrieve all columns.
SELECT *
FROM Customers;

--Retrieve only Name and City.
SELECT Name,City
FROM Customers;

--Show unique cities.
SELECT DISTINCT City 
FROM Customers;

--Display the top 5 customers.
SELECT TOP 5 CustomerID,Name
FROM Customers;

--Sort by age in descending order.
SELECT Age
FROM Customers
ORDER BY Age DESC;

--Filter customers older than 25.
SELECT CustomerID,Name,Age
FROM Customers
WHERE Age> 25;

--Filter customers from J City.
SELECT CustomerID,Name,City
from Customers
where City = 'J City';

--Display names using aliases.
SELECT  CustomerID,Name as Customer_Name
FROM Customers