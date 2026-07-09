Day 1: Database Fundamentals & Basic Data Manipulation

«Part of the 30-Day SQL Mastery Roadmap for Data Analytics using Microsoft SQL Server (SSMS).»

Overview

This project covers the fundamental concepts of relational databases and SQL Server. It focuses on creating databases and tables, inserting data, and retrieving information using basic SQL queries. These concepts form the foundation for writing analytical SQL queries and solving real-world business problems.

---

Learning Objectives

By completing this project, you will be able to:

- Understand Relational Database Management Systems (RDBMS)
- Differentiate between a Database, Schema, and Table
- Choose appropriate SQL Server data types
- Create databases and tables
- Insert single and multiple records
- Retrieve data using SQL queries
- Filter, sort, and limit results
- Apply SQL coding best practices

---

Technologies Used

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- Transact-SQL (T-SQL)

---

SQL Concepts Covered

Database Fundamentals

- Database
- Schema
- Table
- RDBMS
- SQL Server Architecture

Data Types

- INT
- BIGINT
- VARCHAR
- CHAR
- DATE
- DATETIME
- DECIMAL
- BIT
- UNIQUEIDENTIFIER

Data Definition Language (DDL)

- CREATE DATABASE
- USE
- CREATE TABLE

Data Manipulation Language (DML)

- INSERT INTO

Data Retrieval

- SELECT
- WHERE
- ORDER BY
- DISTINCT
- TOP
- Column Aliases

---

Project Structure

Day-01-Database-Fundamentals/

│
├── README.md
├── create_database.sql
├── create_tables.sql
├── insert_sample_data.sql
├── basic_queries.sql
├── practice_exercises.sql
├── interview_questions.md
├── cheat_sheet.md
└── screenshots/
    ├── table_creation.png
    ├── insert_results.png
    └── query_output.png

---

Database Schema

Customers

Column| Data Type
CustomerID| INT
FirstName| VARCHAR(50)
LastName| VARCHAR(50)
Email| VARCHAR(100)
City| VARCHAR(50)
JoinDate| DATE

Orders

Column| Data Type
OrderID| INT
CustomerID| INT
OrderDate| DATE
TotalAmount| DECIMAL(10,2)

---

Skills Demonstrated

- Database creation
- Table design
- Selecting appropriate data types
- Primary Keys
- Identity Columns
- Data insertion
- Data retrieval
- Data filtering
- Data sorting
- Removing duplicate records
- SQL formatting standards

---

Business Scenario

A retail company needs to manage customer and order information efficiently. This project demonstrates how SQL Server stores, organizes, and retrieves business data that can later be used for reporting, dashboards, and business analytics.

---

Practice Exercises

Completed exercises include:

- Retrieve all customer records
- Filter customers by city
- Find unique cities
- Retrieve highest-value orders
- Filter orders by date
- Create calculated output using aliases
- Practice TOP, DISTINCT, ORDER BY, and WHERE

---

Interview Preparation

Topics covered:

- Difference between Database and Table
- SQL Server Data Types
- CREATE TABLE syntax
- INSERT INTO
- SELECT statement
- WHERE clause
- ORDER BY
- DISTINCT
- TOP
- DELETE vs TRUNCATE
- SQL query execution order

---

Key Takeaways

- Built a relational database from scratch.
- Designed tables using appropriate data types and constraints.
- Inserted and queried data using SQL Server.
- Applied filtering, sorting, aliases, and duplicate removal techniques.
- Practiced SQL queries commonly used by Data Analysts.

---

Next Step

Day 2: Filtering, Logical Operators, Comparison Operators, and CASE Statements.