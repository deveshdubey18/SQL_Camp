# ***Continuing MySQL Progreamming***

# Labels
### 15. Label
Meaning / Use:
Used to give a name to a loop or BEGIN...END block.
> Labels are commonly used with LEAVE and ITERATE.

Syntax:
```
<label_name>: LOOP

    <statements>;

END LOOP <label_name>;
```
Example:
```
employee_loop: LOOP

    SET counter = counter + 1;

    IF counter >= 10 THEN
        LEAVE employee_loop;
    END IF;

END LOOP employee_loop;
```

# BEGIN...END

### 16. BEGIN...END
Meaning / Use:
Used to group multiple SQL statements into a single block.
> ***Important*** It is commonly used inside stored procedures, functions, loops, and conditional statements.

Syntax:
```
BEGIN

    <statement1>;
    <statement2>;
    <statement3>;

END;
```
Example:
```
BEGIN

    SET counter = 1;
    SET total = 100;

END;
```

# Most IMP in SQL Programmming

# ***Stored Procedures***
- A stored procedure is a predefined group of SQL statements stored inside the database that can be executed whenever required.
- DELIMITER ka use Stored Procedures, Functions, Triggers, aur Events create karte time hota hai.

### 17. CREATE PROCEDURE
Meaning / Use:
Used to create a stored procedure.

Syntax:
```
DELIMITER //

CREATE PROCEDURE <procedure_name>()
BEGIN

    <statements>;

END //

DELIMITER ;
```
Example:
```
DELIMITER //

CREATE PROCEDURE show_employees()
BEGIN

    SELECT *
    FROM employees;

END //

DELIMITER ;
```
### 18. CALL
Meaning / Use:
Used to execute a stored procedure.

Syntax:
```
CALL <procedure_name>();
```
Example:
```
CALL show_employees();
```

### 19. DROP PROCEDURE
Meaning / Use:
Used to delete an existing stored procedure.

Syntax:
```
DROP PROCEDURE <procedure_name>;
```
Example:
```
DROP PROCEDURE show_employees;
```















