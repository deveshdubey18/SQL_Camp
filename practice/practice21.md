# 5. Conditional Functions
Meaning / Use:
Conditional functions return different results depending on a specified condition.


### 5.1 IF()
Meaning / Use:
Returns one value if a condition is true and another value if it is false.
Syntax:
IF(condition, value_if_true, value_if_false);
Example:
SELECT
    employee_name,
    salary,
    IF(salary >= 50000, 'High', 'Low') AS salary_category
FROM employees;


### 5.2 IFNULL()
Meaning / Use:
Returns an alternative value when the given expression is NULL.
Syntax:
IFNULL(expression, alternative_value);
Example:
SELECT
    employee_name,
    IFNULL(commission, 0) AS commission
FROM employees;


### 5.3 NULLIF()
Meaning / Use:
Returns NULL if two expressions are equal; otherwise, returns the first expression.
Syntax:
NULLIF(expression1, expression2);
Example:
SELECT NULLIF(10, 10);
Output:
NULL


### 5.4 COALESCE()
Meaning / Use:
Returns the first non-NULL value from a list of expressions.
Syntax:
COALESCE(expression1, expression2, ...);
Example:
SELECT
    employee_name,
    COALESCE(phone, email, 'Not Available') AS contact
FROM employees;



### 5.5 CASE
Meaning / Use:
Performs conditional logic and returns a value based on matching conditions.
Syntax:
CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    ELSE result
END;
Example:
SELECT
    employee_name,
    salary,
    CASE
        WHEN salary >= 80000 THEN 'High'
        WHEN salary >= 50000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_category
FROM employees;
