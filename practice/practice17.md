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











