# ***DataBase Objects***
`View`
`Index`

# 1. Views
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













