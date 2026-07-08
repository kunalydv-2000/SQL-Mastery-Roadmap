/*

You are a Data Analyst at an online retail company.

Your manager asks:

1. Display all customer names.
2. Show unique customer cities.
3. Display the top 10 customers by age.
4. Show customers who live in Delhi.
5. Display customer IDs and names using readable aliases.

Write SQL queries to answer each request.

*/
-- 1. Display all customer names.
SELECT Names
FROM Retail_Company

-- 2. Show unique customer cities.
SELECT DISTINCT City
from Retail_Company

--3. Display the top 10 customers by age.
SELECT TOP 10 ID,Name,Age
FROM Retail_Company

--4. Show customers who live in Delhi.
SELECT ID, Name,City
FROM Retail_Company
WHERE City = 'Delhi'

--5. Display customer IDs and names using readable aliases.
SELECT ID AS Customer_ID,Name AS Customer_Name
FROM Retail_Company