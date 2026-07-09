# Cheat Sheet
---

> **Common Commands**

|Command|Description|
|---|---|
|CREATE DATABASE db_name;|Create a new database.|
|USE db_name;|Switch to the specified database.|
|CREATE TABLE table (...);|Define a new table.|
|INSERT INTO table (cols) VALUES (...); |Add rows.|
|SELECT columns FROM table;|Retrieve data.|
|WHERE condition|Filter row.s|
|ORDER BY col ASC/DESC|Sort results.|
|DISTINCT|Remove duplicates.|
|TOP n|Return first n rows.|
|AS alias|Rename column/table temporarily.|

> **Data Type Quick Reference:**

|Type|Use for|
|---|---|
|INT|Whole numbers (up to 2 billion).|
|DECIMAL(p,s)| Precise numbers like money.|
|VARCHAR(n)|Text up to n characters.|
DATE|Date only.|
DATETIME|Date and time.|