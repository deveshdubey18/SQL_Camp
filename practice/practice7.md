# MySQL Programming
MySQL Programming allows you to write **procedural SQL logic** inside the database.
> ***It includes :***

- `Variables`
- `Conditional Statements`
- `Loops`
- `Loop conterol`
- `Stored Procedures`
- `Stored Functions`
- `Cursors`
- `Error Handling`


# Variables
Variables are used to **store temporary values** while executing a stored procedure, function, or other MySQL program blocks.

---

### 1. DECLARE
**Meaning / Use:**  
Used to declare a local variable inside a stored procedure, function, or `BEGIN...END` block.

Syntax:
```
DECLARE <variable_name> <data_type>;
```
Example:
```
DECLARE total_salary DECIMAL(10,2);
```

### 2. DECLARE WITH DEFAULT
Meaning / Use:
Used to declare a variable and assign an initial/default value.

Syntax:
```
DECLARE <variable_name> <data_type> DEFAULT <value>;
```
Example:
```
DECLARE counter INT DEFAULT 0;
```

### 3. SET
Meaning / Use:
Used to assign or change a value stored in a variable.

Syntax:
```
SET <variable_name> = <value>;
```
Example:
```
SET counter = 10;
```

### 4. SELECT ... INTO
Meaning / Use:
Used to retrieve a value from a query and store it inside a variable.

Syntax:
```
SELECT <column_name>
INTO <variable_name>
FROM <table_name>
WHERE <condition>;
```
Example:
```
SELECT salary
INTO employee_salary
FROM employees
WHERE employee_id = 1;
```

> ## Important: IF, IF...ELSE, loops, DECLARE, cursors, and handlers are procedural constructs primarily used inside MySQL stored programs such as procedures, functions, and triggers. They are not normally executed as standalone SQL queries.

# Conditional Statements
Conditional statements are used to execute different SQL statements depending on whether a condition is true or false.

### 5. IF
Meaning / Use:
Executes a block of statements when a specified condition is true.

Syntax:
```
IF <condition> THEN
    <statements>;
END IF;
```
Example:
```
IF salary > 50000 THEN
    SET bonus = 5000;
END IF;
```

### 6. IF...ELSE
Meaning / Use:
Executes one block when the condition is true and another block when the condition is false.

Syntax:
```
IF <condition> THEN
    <statements>;
ELSE
    <statements>;
END IF;
```
Example:
```
IF salary >= 50000 THEN
    SET salary_status = 'High';
ELSE
    SET salary_status = 'Low';
END IF;
```

### 7. IF...ELSEIF...ELSE
Meaning / Use:
Used to check multiple conditions.

Syntax:
```
IF <condition1> THEN
    <statements>;

ELSEIF <condition2> THEN
    <statements>;

ELSE
    <statements>;

END IF;
```
Example:
```
IF salary >= 70000 THEN
    SET salary_grade = 'A';

ELSEIF salary >= 50000 THEN
    SET salary_grade = 'B';

ELSE
    SET salary_grade = 'C';

END IF;
