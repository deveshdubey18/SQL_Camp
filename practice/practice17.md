# ***DataBase Objects***
`View`
`Index`

### 1. Views
Meaning / Use:
A View is a virtual table based on the result of a SELECT query. It does not normally store the actual data separately; it displays data from one or more underlying tables.

Syntax:
```
CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```
Example:
```
CREATE VIEW employee_view AS
SELECT employee_id, employee_name, salary
FROM employees
WHERE salary > 50000;
```
To use the View:
```
SELECT * FROM employee_view;
```

### 2. CREATE OR REPLACE VIEW
Meaning / Use:
Creates a new View or replaces an existing View with a new definition.

Syntax:
```
CREATE OR REPLACE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```
Example:
```
CREATE OR REPLACE VIEW employee_view AS
SELECT employee_id, employee_name, department
FROM employees;
```

### 3. ALTER VIEW
Meaning / Use:
Modifies the definition of an existing View.

Syntax:
```
ALTER VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```
Example:
```
ALTER VIEW employee_view AS
SELECT employee_id, employee_name, salary
FROM employees;
```

### 4. SHOW CREATE VIEW
Meaning / Use:
Displays the SQL statement used to create a View.

Syntax:
```
SHOW CREATE VIEW view_name;
```
Example:
```
SHOW CREATE VIEW employee_view;
```

### 5. DROP VIEW
Meaning / Use:
Deletes an existing View.

Syntax:
```
DROP VIEW view_name;
```
Example:
```
DROP VIEW employee_view;
```

# Indexes

### 6. CREATE INDEX

Meaning / Use:
Creates an index on a column to improve the speed of data retrieval.

Syntax:

CREATE INDEX index_name
ON table_name (column_name);

Example:

CREATE INDEX idx_employee_name
ON employees (employee_name);
7. CREATE UNIQUE INDEX

Meaning / Use:
Creates a unique index that does not allow duplicate values in the indexed column or columns.

Syntax:

CREATE UNIQUE INDEX index_name
ON table_name (column_name);

Example:

CREATE UNIQUE INDEX idx_employee_email
ON employees (email);
8. CREATE INDEX ON MULTIPLE COLUMNS

Meaning / Use:
Creates a composite index using multiple columns.

Syntax:

CREATE INDEX index_name
ON table_name (column1, column2);

Example:

CREATE INDEX idx_dept_salary
ON employees (department, salary);
9. SHOW INDEX

Meaning / Use:
Displays information about indexes defined on a table.

Syntax:

SHOW INDEX FROM table_name;

Example:

SHOW INDEX FROM employees;
10. DROP INDEX

Meaning / Use:
Deletes an existing index from a table.

Syntax:

DROP INDEX index_name
ON table_name;

Example:

DROP INDEX idx_employee_name
ON employees;









