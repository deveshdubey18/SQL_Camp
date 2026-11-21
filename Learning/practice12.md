# ***Continuing MySQL Programming***

# Cursors
A cursor is used to process query results one row at a time inside stored programs.

- **`The basic cursor process is:`**
```
 DECLARE
   ↓
  OPEN
   ↓
  FETCH
   ↓
  CLOSE
```

### 26. DECLARE CURSOR
Meaning / Use:
Used to declare a cursor for a query.

Syntax:
```
DECLARE <cursor_name>
CURSOR FOR
<select_query>;
```
Example:
```
DECLARE employee_cursor
CURSOR FOR
SELECT employee_id
FROM employees;
```

### 27. OPEN CURSOR
Meaning / Use:
Used to open a declared cursor and prepare its result set for fetching.

Syntax:
```
OPEN <cursor_name>;
```
Example:
```
OPEN employee_cursor;
```

### 28. FETCH
Meaning / Use:
Used to retrieve the next row from a cursor into variables.

Syntax:
```
FETCH <cursor_name>
INTO <variable_name>;
```
Example:
```
FETCH employee_cursor
INTO employee_id;
```

### 29. CLOSE CURSOR
Meaning / Use:
Used to close an opened cursor and release its resources.

Syntax:
```
CLOSE <cursor_name>;
```
Example:
```
CLOSE employee_cursor;
```

# Full Working Example (Complete Stored Procedure)

```
DELIMITER //

CREATE PROCEDURE process_employee_salaries()
BEGIN
    DECLARE emp_id INT;
    DECLARE emp_salary DECIMAL(10,2);
    DECLARE total_salary DECIMAL(10,2) DEFAULT 0.00;
    DECLARE is_done INT DEFAULT 0;
    DECLARE emp_cursor CURSOR FOR 
        SELECT employee_id, salary FROM employees;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET is_done = 1;
    OPEN emp_cursor;
    salary_loop: LOOP
        FETCH emp_cursor INTO emp_id, emp_salary;
        IF is_done = 1 THEN
            LEAVE salary_loop;
        END IF;
        SET total_salary = total_salary + emp_salary;
    END LOOP salary_loop;
    CLOSE emp_cursor;
    SELECT total_salary AS Total_Company_Payroll;
END //

DELIMITER ;
```
Run Structure:
```
CALL process_employee_salaries();
```


