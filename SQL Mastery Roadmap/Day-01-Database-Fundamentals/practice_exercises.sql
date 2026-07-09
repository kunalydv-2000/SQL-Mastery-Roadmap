--Write a query to retrieve all columns from the Customers table.
SELECT *
FROM dbo.customers

--Retrieve the first name, last name, and city of customers from New York.
SELECT firstname,lastname,city 
FROM dbo.customers
WHERE city = 'New York'

--Get a list of unique cities from the Customers table.
SELECT distinct city
from dbo.customers

/*Retrieve the top 3 orders with the highest TotalAmount, showing OrderID, CustomerID,
and TotalAmount,sorted descending.*/
SELECT top 3 orderid,customerid,TotalAmount
FROM dbo.orders
ORDER BY totalamount DESC;

/*Find all orders placed after July 2, 2026, and show the OrderDate and TotalAmount, 
sorted by OrderDate ascending.*/
SELECT orderid,orderdate,totalamount
from dbo.orders
where orderdate>'2026-07-02'
ORDER BY orderdate ASC

/*Display the customer's first name and last name combined into a single column called 
"Full Name", along with their Email, for customers in Los Angeles.*/
select CONCAT(firstname,' ',lastname) as fullname,email
from dbo.customers
where city = 'Los Angeles'

/*Write a query that returns the top 2 most recent orders (by OrderDate) for each customer? 
(We’ll cover joins later, but for now try using a subquery or a window function 
if you know – but not required yet; we’ll revisit.)*/


