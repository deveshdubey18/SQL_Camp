# ***Continuing MySQL Programming***

# Procedure Parameters
Parameters allow values to be passed into or returned from stored procedures.

MySQL supports:
- `IN`
- `OUT`
- `INOUT`

### 20. IN Parameter
Meaning / Use:
Used to pass a value into a stored procedure.

Syntax:
```
CREATE PROCEDURE <procedure_name>(
    IN <parameter_name> <data_type>
)
BEGIN

    <statements>;

END;
```
Example:
```
DELIMITER //

CREATE PROCEDURE get_employee(IN emp_id INT)
BEGIN

    SELECT *
    FROM employees
    WHERE employee_id = emp_id;

END //

DELIMITER ;
```
Execute:
```
CALL get_employee(1);
```

### 21. OUT Parameter
Meaning / Use:
Used to return a value from a stored procedure.

Syntax:
```
CREATE PROCEDURE <procedure_name>(
    OUT <parameter_name> <data_type>
)
BEGIN

    SET <parameter_name> = <value>;

END;
```
Example:
```
DELIMITER //

CREATE PROCEDURE get_salary(
    IN emp_id INT,
    OUT emp_salary DECIMAL(10,2)
)
BEGIN

    SELECT salary
    INTO emp_salary
    FROM employees
    WHERE employee_id = emp_id;

END //

DELIMITER ;
```
Execute:
```
CALL get_salary(1, @salary);

View the result:

SELECT @salary;
```

23. INOUT Parameter

Meaning / Use:
Used when a parameter needs to receive an input value and return a modified value.

Syntax:

CREATE PROCEDURE <procedure_name>(
    INOUT <parameter_name> <data_type>
)
BEGIN

    SET <parameter_name> = <new_value>;

END;

Example:

DELIMITER //

CREATE PROCEDURE increase_value(
    INOUT value INT
)
BEGIN

    SET value = value + 10;

END //

DELIMITER ;

Execute:

SET @value = 20;

CALL increase_value(@value);

SELECT @value;

Result:

30
