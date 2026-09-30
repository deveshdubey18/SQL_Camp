# ***Advance MySQL Queries***

### 1. Subqueries
Meaning / Use:
A Subquery is a query written inside another SQL query. The inner query executes first, and its result is used by the outer query.

Syntax:
```
SELECT column1, column2
FROM table_name
WHERE column_name operator (
    SELECT column_name
    FROM table_name
    WHERE condition
);
```
Example:

> Find employees whose salary is greater than the average salary:
```
SELECT employee_name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);
```

### 2. Correlated Subqueries
Meaning / Use:
A Correlated Subquery is a subquery that depends on the outer query. The inner query is executed for each row processed by the outer query.

Syntax:
```
SELECT column1, column2
FROM table1 t1
WHERE column_name operator (
    SELECT column_name
    FROM table2 t2
    WHERE t2.column = t1.column
);
```
Example:

> Find employees whose salary is greater than the average salary of their department:
```
SELECT e.employee_name, e.department, e.salary
FROM employees e
WHERE e.salary > (
    SELECT AVG(e2.salary)
    FROM employees e2
    WHERE e2.department = e.department
);
```

3. CTE (Common Table Expression)

Meaning / Use:
A CTE is a temporary named result set that can be referenced within a SELECT, INSERT, UPDATE, or DELETE statement.

It is defined using the WITH keyword.

Syntax:

WITH cte_name AS (
    SELECT column1, column2
    FROM table_name
    WHERE condition
)
SELECT *
FROM cte_name;

Example:

Find employees earning more than 50000:

WITH high_salary AS (
    SELECT employee_id, employee_name, salary
    FROM employees
    WHERE salary > 50000
)
SELECT *
FROM high_salary;
4. Recursive CTE

Meaning / Use:
A Recursive CTE is a CTE that references itself. It is commonly used for hierarchical or sequential data such as employee-manager relationships, organizational structures, and numbers.

Syntax:

WITH RECURSIVE cte_name AS (
    -- Anchor query
    SELECT ...

    UNION ALL

    -- Recursive query
    SELECT ...
    FROM cte_name
    WHERE condition
)
SELECT *
FROM cte_name;

Example:

Generate numbers from 1 to 5:

WITH RECURSIVE numbers AS (
    SELECT 1 AS num

    UNION ALL

    SELECT num + 1
    FROM numbers
    WHERE num < 5
)
SELECT *
FROM numbers;

Output:

1
2
3
4
5
5. Window Functions

Meaning / Use:
A Window Function performs calculations across a set of related rows without combining those rows into a single result row.

Common Window Functions:

Window Functions
│
├── Ranking
│   ├── ROW_NUMBER()
│   ├── RANK()
│   └── DENSE_RANK()
│
├── Value
│   ├── LAG()
│   ├── LEAD()
│   ├── FIRST_VALUE()
│   └── LAST_VALUE()
│
└── Aggregate
    ├── SUM()
    ├── AVG()
    ├── COUNT()
    ├── MIN()
    └── MAX()

Syntax:

function_name(column_name)
OVER (
    PARTITION BY column_name
    ORDER BY column_name
);

Example:

Assign a rank to employees based on salary:

SELECT
    employee_name,
    salary,
    RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employees;
Example with PARTITION BY

Rank employees within each department:

SELECT
    employee_name,
    department,
    salary,
    RANK() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS department_rank
FROM employees;
6. UNION

Meaning / Use:
UNION combines the results of two or more SELECT queries and removes duplicate rows.

Syntax:

SELECT column1, column2
FROM table1

UNION

SELECT column1, column2
FROM table2;

Example:

SELECT employee_name
FROM employees

UNION

SELECT customer_name
FROM customers;

Duplicate names appearing in both results are returned only once.

7. UNION ALL

Meaning / Use:
UNION ALL combines the results of two or more SELECT queries and keeps duplicate rows.

Syntax:

SELECT column1, column2
FROM table1

UNION ALL

SELECT column1, column2
FROM table2;

Example:

SELECT employee_name
FROM employees

UNION ALL

SELECT customer_name
FROM customers;

If the same name exists in both tables, it will appear multiple times.

8. Set Operations

Meaning / Use:
Set operations are used to combine or compare the results of multiple SELECT statements.

In MySQL, the commonly used set operation is:

Set Operations
│
├── UNION
└── UNION ALL

Note: MySQL does not directly support INTERSECT and EXCEPT as standard set operators in the same way some other databases do. Similar results can be achieved using JOIN, EXISTS, NOT EXISTS, or other queries.

Syntax:

SELECT ...
FROM table1

UNION

SELECT ...
FROM table2;

Example:

SELECT employee_name
FROM employees

UNION

SELECT customer_name
FROM customers;



