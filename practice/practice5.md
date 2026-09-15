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








