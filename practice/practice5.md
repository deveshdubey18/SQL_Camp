## Continuing DQL

# *Aggregate Functions*
> Used to perform calculations on multiple rows and return a single result.

Common aggregate functions:
```
COUNT() → Counts rows
SUM()   → Calculates total
AVG()   → Calculates average
MIN()   → Finds minimum value
MAX()   → Finds maximum value
```

### 29. COUNT()
Meaning / Use:
Used to count rows or non-NULL values.

Syntax:
```
SELECT COUNT(<column_name>)
FROM <table_name>;
```
Example:
```
SELECT COUNT(employee_id)
FROM employees;
```
> To count all rows:
```
SELECT COUNT(*)
FROM employees;
```

### 30. SUM()
Meaning / Use:
Used to calculate the total of a numeric column.

Syntax:
```
SELECT SUM(<column_name>)
FROM <table_name>;
```
Example:
```
SELECT SUM(salary)
FROM employees;
```

### 31. AVG()
Meaning / Use:
Used to calculate the average value of a numeric column.

Syntax:
```
SELECT AVG(<column_name>)
FROM <table_name>;
```
Example:
```
SELECT AVG(salary)
FROM employees;
```

### 32. MIN()
Meaning / Use:
Used to find the minimum value in a column.

Syntax:
```
SELECT MIN(<column_name>)
FROM <table_name>;
```
Example:
```
SELECT MIN(salary)
FROM employees;
```

### 33. MAX()
Meaning / Use:
Used to find the maximum value in a column.

Syntax:
```
SELECT MAX(<column_name>)
FROM <table_name>;
```
Example:
```
SELECT MAX(salary)
FROM employees;
```

# *Grouping*

### 34. GROUP BY
Meaning / Use:
Used to group rows having the same values so aggregate functions can be applied to each group. It is used when *aggregation functions* and *non-aggregation functions*
are used in a single query.

Syntax:
```
SELECT <column_name>, <aggregate_function>(<column_name>)
FROM <table_name>
GROUP BY <column_name>;
```
Example:
```
SELECT department_id, AVG(salary)
FROM employees
GROUP BY department_id;
```

### 35. HAVING
Meaning / Use:
Used to filter groups created by GROUP BY.

Syntax:
```
SELECT <column_name>, <aggregate_function>(<column_name>)
FROM <table_name>
GROUP BY <column_name>
HAVING <condition>;
```
Example:
```
SELECT department_id, AVG(salary)
FROM employees
GROUP BY department_id
HAVING AVG(salary) > 50000;
```
> Important : `WHERE` filters rows before grouping, while `HAVING` filters groups after grouping.

# *DQL — JOINS*
Joins are used to combine data from multiple tables based on related columns.<br>
*MySQL JOINs* :
```
INNER JOIN
LEFT JOIN
RIGHT JOIN
FULL OUTER JOIN
CROSS JOIN
SELF JOIN
```

### 36. INNER JOIN
Meaning / Use:
Returns only the records that have matching values in both tables.

Syntax:
```
SELECT <columns>
FROM <table1>
INNER JOIN <table2>
ON <table1>.<column> = <table2>.<column>;
```
Example:
```
SELECT e.name, d.department_name
FROM employees AS e
INNER JOIN departments AS d
ON e.department_id = d.department_id;
```
> Note : Above example tables(employees, departments) are given alias as e, d.

### 37. LEFT JOIN
Meaning / Use:
Returns all records from the left table and matching records from the right table.

Syntax:
```
SELECT <columns>
FROM <table1>
LEFT JOIN <table2>
ON <table1>.<column> = <table2>.<column>;
```
Example:
```
SELECT e.name, d.department_name
FROM employees AS e
LEFT JOIN departments AS d
ON e.department_id = d.department_id;
```

### 38. RIGHT JOIN
Meaning / Use:
Returns all records from the right table and matching records from the left table.

Syntax:
```
SELECT <columns>
FROM <table1>
RIGHT JOIN <table2>
ON <table1>.<column> = <table2>.<column>;
```
Example:
```
SELECT e.name, d.department_name
FROM employees AS e
RIGHT JOIN departments AS d
ON e.department_id = d.department_id;
```

### 38. FULL OUTER JOIN
Meaning / Use:
Returns all records from both tables, including matching and non-matching records.

Syntax:
```
SELECT <columns>
FROM <table1>
FULL OUTER JOIN <table2>
ON <table1>.<column> = <table2>.<column>;
```
Example:
```
SELECT e.name, d.department_name
FROM employees AS e
FULL OUTER JOIN departments AS d
ON e.department_id = d.department_id;
```
> MySQL does not directly support ```FULL OUTER JOIN```. It can be simulated using ```LEFT JOIN, RIGHT JOIN, and UNION```.

### 39. CROSS JOIN
Meaning / Use:
Returns every possible combination of rows from both tables.

Syntax:
```
SELECT <columns>
FROM <table1>
CROSS JOIN <table2>;
```
Example:
```
SELECT e.name, d.department_name
FROM employees AS e
CROSS JOIN departments AS d;
```

### 40. SELF JOIN
Meaning / Use:
Used to join a table with itself.

Syntax:
```
SELECT <columns>
FROM <table_name> AS a
JOIN <table_name> AS b
ON <condition>;
```
Example:
```
SELECT
    e1.name AS employee,
    e2.name AS manager
FROM employees AS e1
JOIN employees AS e2
ON e1.manager_id = e2.employee_id;
```

# *SET OPERATORS*
Set operators are used to combine the results of multiple SELECT queries.
```
UNION
UNION ALL
```

### 41. UNION
Meaning / Use:
Combines the results of two or more SELECT queries and removes duplicate rows.

Syntax:
```
SELECT <columns>
FROM <table1>

UNION

SELECT <columns>
FROM <table2>;
```
Example:
```
SELECT name
FROM employees

UNION

SELECT name
FROM managers;
```

### 42. UNION ALL
Meaning / Use:
Combines the results of multiple SELECT queries while keeping duplicate rows.

Syntax:
```
SELECT <columns>
FROM <table1>

UNION ALL

SELECT <columns>
FROM <table2>;
```
Example:
```
SELECT name
FROM employees

UNION ALL

SELECT name
FROM managers;
```

# *SUBQUERIES*
A subquery is a query written inside another SQL query.

### 










