# DQL — Data Query Language

DQL is used to **retrieve and query data from database tables**.

The main DQL command is:

- `SELECT`

DQL also includes different clauses and operators used with `SELECT` to filter, sort, group, and analyze data.

---

## Basic SELECT Operations

### 1. SELECT
Meaning / Use: 
Used to retrieve data from a table.

Syntax:

```
SELECT <column_name>
FROM <table_name>;
```

### 2. SELECT *
Meaning / Use:
Used to retrieve all columns from a table.

Syntax:
```
SELECT *
FROM <table_name>;
```

### 3. SELECT MULTIPLE COLUMNS
Meaning / Use:
Used to retrieve multiple specific columns from a table.

Syntax:
```
SELECT <column1>, <column2>, <column3>
FROM <table_name>;
```

### 4. SELECT DISTINCT
Meaning / Use:
Used to retrieve only unique values and remove duplicate results.

Syntax:
```
SELECT DISTINCT <column_name>
FROM <table_name>;
```

# *Filtering* 
> usually used with `SELECT`
### 5. WHERE

Meaning / Use:
Used to filter records based on a condition.

Syntax:
```
SELECT *
FROM <table_name>
WHERE <condition>;
```

### 6. AND

Meaning / Use:
Used to apply multiple conditions where all conditions must be true.

Syntax:
```
SELECT *
FROM <table_name>
WHERE <condition1>
AND <condition2>;
```

### 7. OR

Meaning / Use:
Used when at least one of multiple conditions must be true.

Syntax:
```
SELECT *
FROM <table_name>
WHERE <condition1>
OR <condition2>;
```

### 8. NOT

Meaning / Use:
Used to reverse or exclude a condition.

Syntax:
```
SELECT *
FROM <table_name>
WHERE NOT <condition>;
```

### 9. IN

Meaning / Use:
Used to check whether a value matches any value in a specified list.

Syntax:
```
SELECT *
FROM <table_name>
WHERE <column_name> IN (<value1>, <value2>, <value3>);
```

### 10. NOT IN

Meaning / Use:
Used to exclude records whose values match the specified list.

Syntax:
```
SELECT *
FROM <table_name>
WHERE <column_name> NOT IN (<value1>, <value2>);
```

### 11. BETWEEN

Meaning / Use:
Used to filter values within a specified range.

Syntax:
```
SELECT *
FROM <table_name>
WHERE <column_name> BETWEEN <value1> AND <value2>;
```

### 12. NOT BETWEEN

Meaning / Use:
Used to filter values outside a specified range.

Syntax:
```
SELECT *
FROM <table_name>
WHERE <column_name> NOT BETWEEN <value1> AND <value2>;
```

### 13. LIKE

Meaning / Use:
Used to search for a specific pattern in text data.

Syntax:
```
SELECT *
FROM <table_name>
WHERE <column_name> LIKE '<pattern>';
```

### 14. LIKE — Wildcards

Meaning / Use:
Used with LIKE to create search patterns.
> *%* - Matches zero or more characters.

> *_* - Matches only one character

Syntax:
```
SELECT *
FROM <table_name>
WHERE <column_name> LIKE 'wildcard';
```

### 15. NOT LIKE

Meaning / Use:
Used to exclude records matching a specific pattern.

Syntax:
```
SELECT *
FROM <table_name>
WHERE <column_name> NOT LIKE '<pattern>';
```

### 16. IS NULL

Meaning / Use:
Used to find records where a column contains NULL.

Syntax:
```
SELECT *
FROM <table_name>
WHERE <column_name> IS NULL;
```

### 17. IS NOT NULL

Meaning / Use:
Used to find records where a column does not contain NULL.

Syntax:
```
SELECT *
FROM <table_name>
WHERE <column_name> IS NOT NULL;
```

# *Sorting & Limiting*

### 18. ORDER BY

Meaning / Use:
Used to sort query results.

Syntax:
```
SELECT *
FROM <table_name>
ORDER BY <column_name>;
```
> ```By default, the sorting is ascending (ASC).```

### 19. ORDER BY ASC

Meaning / Use:
Used to sort data in ascending order.

Syntax:
```
SELECT *
FROM <table_name>
ORDER BY <column_name> ASC;
```

### 20. ORDER BY DESC

Meaning / Use:
Used to sort data in descending order.

Syntax:
```
SELECT *
FROM <table_name>
ORDER BY <column_name> DESC;
```

### 21. ORDER BY MULTIPLE COLUMNS

Meaning / Use:
Used to sort results using more than one column.

Syntax:
```
SELECT *
FROM <table_name>
ORDER BY <column1> ASC, <column2> DESC;
```

### 22. LIMIT

Meaning / Use:
Used to restrict the number of rows returned by a query.

Syntax:
```
SELECT *
FROM <table_name>
LIMIT <number>;
```

### 23. LIMIT WITH OFFSET

Meaning / Use:
Used to skip a specified number of rows and then return a limited number of rows.

Syntax:
```
SELECT *
FROM <table_name>
LIMIT <number> OFFSET <number>;
```

Example:
```
SELECT *
FROM employees
LIMIT 5 OFFSET 10;
```
> This skips the first 10 rows and returns the next 5 rows.





