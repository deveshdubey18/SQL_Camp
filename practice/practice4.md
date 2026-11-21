## Continuing DQL

# *Aliases & Expressions*

### 24. AS — COLUMN ALIAS

Meaning / Use:
Used to temporarily rename a column in the query result.

Syntax:
```
SELECT <column_name> AS <alias_name>
FROM <table_name>;
```
Example:
```
SELECT name AS employee_name
FROM employees;
```

### 25. AS — TABLE ALIAS

Meaning / Use:
Used to give a temporary name to a table, commonly used in joins and complex queries.

Syntax:
```
SELECT <alias>.<column_name>
FROM <table_name> AS <alias>;
```
Example:
```
SELECT e.name
FROM employees AS e;
```

### 26. CONCAT()

Meaning / Use:
Used to combine two or more strings.

Syntax:
```
SELECT CONCAT(<value1>, <value2>)
FROM <table_name>;
```
Example:
```
SELECT CONCAT(name, ' - Employee')
FROM employees;
```

### 27. Arithmetic Operators

Meaning / Use:
Used to perform mathematical calculations on numeric columns.

Common operators:
```
+  → Addition
-  → Subtraction
*  → Multiplication
/  → Division
%  → Modulo / Remainder
```
Example:
```
SELECT name, salary * 12 AS annual_salary
FROM employees;
```

### 28. CASE

Meaning / Use:
Used to create conditional logic inside a query.

Syntax:
```
SELECT
    CASE
        WHEN <condition> THEN <result>
        WHEN <condition> THEN <result>
        ELSE <result>
    END AS <alias>
FROM <table_name>;
```
Example:
```
SELECT
    name,
    salary,
    CASE
        WHEN salary >= 60000 THEN 'High'
        WHEN salary >= 40000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_category
FROM employees;
```

### 29. CAST()

Meaning / Use:
Used to convert a value from one data type to another.

Syntax:
```
SELECT CAST(<value> AS <data_type>);
```
Example:
```
SELECT CAST(salary AS SIGNED)
FROM employees;
```
> `SIGNED` number—meaning it can be positive, negative, or zero.

### 






















