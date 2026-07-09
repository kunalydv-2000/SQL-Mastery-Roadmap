# Interview Questions
---

**Basic**

1. What is the difference between `DELETE` and `TRUNCATE`?

- Answer: `DELETE` removes rows one by one, can have a WHERE clause, and triggers triggers. `TRUNCATE` removes all rows in a table, resets identity seed, and is faster because it deallocates data pages. Both are DML vs DDL.
Actually `TRUNCATE` is DDL, `DELETE` is DML.

2. How do you select the top 5 rows from a table in SQL Server?

- Answer: `SELECT TOP 5 * FROM table_name`;
---
**Intermediate**

3. What is the effect of `DISTINCT` on performance?

- Answer: `DISTINCT` forces SQL Server to sort or hash the result set to remove duplicates, which can be resource‑intensive on large datasets. Use it only when you genuinely need unique rows.

4. How do you avoid duplicate rows without using `DISTINCT`?
- Answer: Use `GROUP BY` on all selected columns, or use a subquery with `ROW_NUMBER()` and filter on row number = 1.
---
**Advanced**

5. Explain the logical order of operations in a `SELECT` query.
- Answer: The logical order is: `FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY → OFFSET/FETCH` (or `TOP`). Understanding this helps write efficient queries and debug unexpected results.

6. Can you use TOP with a variable?
- Answer: Yes, `SELECT TOP (@variable) * FROM table;` – but you must use parentheses.