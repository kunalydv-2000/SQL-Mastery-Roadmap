# Day 1 - SQL Foundations, SQL Server Architecture & Writing Your First Professional Queries
---
# 1. Learning Objectives

## What you will Learn Today

By the end of today, you will understand:

- What SQL actually is 
- What SQL Server is
- Difference between SQL and SQL Server
- How databases Work
- Database → Tables → Rows → Columns
- Primary Keys
- Sql Server data types
- Writing your first professional SELECT queries
- Using aliases
- Sorting data
- Filtering data 
- Using DISTINCT
- Using TOP
- Writing clean SQL


## Why this matters

Almost every SQL interview starts with simple SELECT statements.

Even senior analyst spend most of their day writing SELECT queries.

You cannot perform analytics without mastering these basics.

## How companies use these concepts

Imagine you work for an e-commerce company.

your manager asks:

> "Show me all customers from Delhi"

This is a simple SELECT.

Another manager asks:

> "Show the top 10 highest-selling products."

Again, a SELECT query

Everything starts here.


## Expected Outcome

After today you should be able to:

- Navigate SQL server confidently 
- Understand tables
- Read database schemas
- Write clean SELECT statements 
- Filter records
- Sort results
- Retrieve only required columns 
- Think like a data analyst instead of just writing SQL


# 2. Concept Deep Dive


## Topic 1 - what is SQL?

** Definition**

SQL stands for Structured Query Language.

It is the standard language used to communicate with relational databases.


**Purpose**

SQL allows you to:

- Read data
- Insert data
- Update data
- Delete data
- Analyze data


**Business Applications**

Every company uses SQL:

- Amazon
- Netflix
- Google
- Swiggy
- Zomato
- Flipkart
- Uber

Examples:

Sales reports

Customer analysis

Inventory tracking

Revenue calculation

Marketing analytics

Fraud detection


**SQL Server Syntax**

```sql
SELECT *
FROM Customers;
```


**Best Practices**

- Use uppercase SQL keywords.
- Avoid SELECT * in production.
- Retrieve only the columns you need.
- Use meaningful aliases.


**Common Mistakes**

- Forgetting `FROM`
- Misspelling table names
- Using SELECT * unnecessarily
- Not ending with ; (recommended)


**Performance Considerations**

SELECT * Reads every column increasing 1/O and network usage. Fetch only the required columns for better performance.


**Interview Insight**

Question: What is the difference between SQL and SQL server?

Answer:

- SQL is a language.
- SQL Server is Microsoft's relational database management system (RDBMS) that uses SQL.


**When NOT to use SQL**

SQL is not suitable for:

- Image processing
- Video editing
- Machine learning model training
- General-purpose programming


**Alternatives**

- NoSQL databases (e.g., MongoDB)
- Graph databases
- Time-series databases


## Topic 2 - Understanding Databases

**Definition**

A database is an organized collection of related data.


**Example**

Database: EcommerceDB

Contains:

- Customers
- Orders 
- Products
- Payments 


**Structure**

```bash
Database
|
|— Customers
|— Orders
|— Products
|— Employees
```


**Business Example**

Amazon stores:

- Million of customers
- Billion of orders
- Products
- Reviews
- Payments

inside databases.


**Best Practices**

- Keep related data together.
- Use descriptive table names.
- Normalize data when appropriate.


**Common Mistakes**

- Story unrelated data in one table.
- Duplicate data.
- Poor naming conventions.


## Topic 3 - Rows and Columns

Suppose we have a `customer` table.

| CustomerID | Name | City | Age |
|---|---|---|---|
|1|Rahul|Delhi|25|
|2|Priya|Mumbai|30|
|3|Amit|Jaipur|28|

A column is an attribute

A row is one complete record. 


** Business uses**

One row represent one customer.


## Topic 4 - Primary Key

A Primary Key uniquely identifies every row in a table.

Example:

|CustomerID|
|---|
|1|
|2|
|3|

No duplicates.

No **NULL** values. 


**Business example**

CustomerID ensures every customer is uniquely identifiable.


## Topic 5 - SQL Server data types

Common data types:

| Data Type     | Purpose              | Example             |
| ------------- | -------------------- | ------------------- |
| INT           | Whole numbers        | 101                 |
| BIGINT        | Large integers       | 9876543210          |
| DECIMAL(10,2) | Currency             | 1250.75             |
| VARCHAR(100)  | Variable-length text | Rahul               |
| NVARCHAR(100) | Unicode text         | हिंदी               |
| DATE          | Date only            | 2026-07-07          |
| DATETIME      | Date & time          | 2026-07-07 10:30:00 |
| BIT           | Boolean-like         | 0, 1                |


## Topic 6 — SELECT Statement

**Definition**

Retrieves data from a table.

**Syntax**

```sql
SELECT column_name
FROM table_name;
```

**Basic Example**

```sql
SELECT Name
FROM Customers;
```

**Line-by-line explanation**

**Line 1**

```sql
SELECT Name
```

Returns only the ```Name``` column.

**Line 2**

```sql 
FROM Customers;
```

Specifies the source table.

**Expected Output**

| Name  |
| ----- |
| Rahul |
| Priya |
| Amit  |


**Intermediate Example**

```sql
SELECT
    CustomerID,
    Name,
    City
FROM Customers;
```

**Explanation**

- ```CustomerID``` → Returns customer IDs.
- ```Name``` → Returns customer names.
- ```City``` → Returns customer cities.
- ```sql FROM``` Customers → Reads data from the ```Customers``` table.

**Expected Output**

| CustomerID | Name  | City   |
| ---------- | ----- | ------ |
| 1          | Rahul | Delhi  |
| 2          | Priya | Mumbai |
| 3          | Amit  | Jaipur |

**Advanced Example**

```sql
SELECT
    CustomerID AS ID,
    Name AS CustomerName,
    City AS CustomerCity
FROM Customers;
```

**Explanation**

```sql AS ID``` renames CustomerID to ID.
```sql AS CustomerName``` provides a meaningful display name.
```sql AS CustomerCity``` improves readability.
Aliases do not change the actual table structure.

**Expected Output**

| ID | CustomerName | CustomerCity |
| -- | ------------ | ------------ |
| 1  | Rahul        | Delhi        |
| 2  | Priya        | Mumbai       |
| 3  | Amit         | Jaipur       |

## Topic 7 — DISTINCT

**Purpose**

Removes duplicate values.

```sql
SELECT DISTINCT City
FROM Customers;
```

**Explanation**

- DISTINCT returns each city only once.
- Duplicate city values are eliminated.

**Expected Output**

| City   |
| ------ |
| Delhi  |
| Mumbai |
| Jaipur |

## Topic 8 — TOP
**Purpose**

Limits the number of rows returned.

**SQL Server Syntax**

```sql
SELECT TOP (5) *
FROM Customers;
```

**Explanation**

- ```sql TOP (5)``` returns only the first five rows based on the current order.
- Without ```sql ORDER BY```, the returned rows are not guaranteed to be in a specific sequence.

## Topic 9 — ORDER BY

**Purpose**

Sorts query results.

**Example**

``` sql
SELECT Name, Age
FROM Customers
ORDER BY Age DESC;
```

**Explanation**

- Selects the ```Name``` and ```Age``` columns.
- Reads from the ```Customers``` table.
- Sorts the result by ```Age``` in descending order (highest to lowest).

**Expected Output**

| Name  | Age |
| ----- | --: |
| Priya |  30 |
| Amit  |  28 |
| Rahul |  25 |

## Topic 10 — WHERE

**Purpose**

Filters rows based on a condition.

**Example**

```sql 
SELECT Name, City
FROM Customers
WHERE City = 'Delhi';
```

**Explanation**

- Retrieves the ```Name``` and ```City``` columns.
- Filters the data to include only customers whose ```City``` is ```Delhi```.

**Expected Output**

| Name  | City  |
| ----- | ----- |
| Rahul | Delhi |

**SQL Server Demonstration Summary**

By combining today's concepts, you can write a query such as:

```sql
SELECT TOP (3)
    CustomerID,
    Name AS CustomerName,
    City,
    Age
FROM Customers
WHERE Age >= 25
ORDER BY Age DESC;
```

**What this query does**
- Returns only the first three rows after sorting.
- Displays selected columns with a readable alias.
- Filters for customers aged 25 or older.
- Sorts by age from highest to lowest.

**Best Practices Checklist**
- Use uppercase SQL keywords.
- Avoid ```sql SELECT *``` unless necessary.
- Use meaningful aliases.
- Always use ```sql ORDER BY``` when using ``` sql TOP``` if the order matters.
- Format queries consistently with one column per line for readability.
- Retrieve only the data you need.

**Mini Business Scenario**

You are a Data Analyst at an online retail company.

Your manager asks:

1. Display all customer names.
2. Show unique customer cities.
3. Display the top 10 customers by age.
4. Show customers who live in Delhi.
5. Display customer IDs and names using readable aliases.

Write SQL queries to answer each request.

**Practice Exercises**
1. Create a database named RetailDB.
2. Create a table named Customers with appropriate data types:
    - CustomerID
    - Name
    - City
   - Age
    - Email
3. Insert at least 10 sample records.
4. Write queries to:
    - Retrieve all columns.
    - Retrieve only Name and City.
    - Show unique cities.
    - Display the top 5 customers.
    - Sort by age in descending order.
    - Filter customers older than 25.
    - Filter customers from Jaipur.
    - Display names using aliases.

**Interview Questions**

1. What is SQL?
2. What is the difference between SQL and SQL Server?
3. What is a database?
4. What is the difference between a row and a column?
5. What is a primary key?
6. Why should SELECT * generally be avoided?
7. What is the purpose of DISTINCT?
8. How does TOP work in SQL Server?
9. What is the difference between WHERE and ORDER BY?
10. What are some common SQL Server data types?
