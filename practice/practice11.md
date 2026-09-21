# ***Continuing MySQL Programming***

# Stored Functions
A stored function is a database object that accepts parameters, performs an operation, and returns a single value.

### 23. CREATE FUNCTION
Meaning / Use:
Used to create a stored function.

Syntax:
```
DELIMITER //

CREATE FUNCTION <function_name>(
    <parameter_name> <data_type>
)
RETURNS <return_data_type>
DETERMINISTIC
BEGIN

    <statements>;

    RETURN <value>;

END //

DELIMITER ;
```
Example:
```
DELIMITER //

CREATE FUNCTION annual_salary(
    monthly_salary DECIMAL(10,2)
)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN

    RETURN monthly_salary * 12;

END //

DELIMITER ;
```
Use the function:
```
SELECT annual_salary(60000);
```

### 24. RETURN
Meaning / Use:
Used inside a stored function to return a value.

Syntax:
```
DELIMITER //

CREATE FUNCTION <function_name>(
    <param1> <datatype>
)
RETURNS <return_datatype>
[DETERMINISTIC | NOT DETERMINISTIC]
BEGIN
    -- Declarations & Operations
    
    RETURN <expression_or_variable_or_value>;
END //

DELIMITER ;
```
Example:
```
RETURN monthly_salary * 12;
```

### 26. DROP FUNCTION
Meaning / Use:
Used to delete a stored function.

Syntax:
```
DROP FUNCTION <function_name>;
```
Example:
```
DROP FUNCTION annual_salary;
```










