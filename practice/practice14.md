
# Triggers
A **Trigger** is a database object that automatically executes a set of SQL statements when a specified event occurs on a table.

Triggers are commonly used for:

- Auditing changes
- Automatically updating related data
- Validating data
- Maintaining logs
- Enforcing business rules

---

## 1. CREATE TRIGGER

**Meaning / Use:**  
Used to create a trigger that automatically executes when a specified event occurs.

**Syntax:**
```
CREATE TRIGGER <trigger_name>
<BEFORE | AFTER> <INSERT | UPDATE | DELETE>
ON <table_name>
FOR EACH ROW
BEGIN
    <statements>;
END;
```
Example:
```
DELIMITER //

CREATE TRIGGER before_employee_insert
BEFORE INSERT
ON employees
FOR EACH ROW
BEGIN
    SET NEW.country = 'India';
END //

DELIMITER ;
```
> This trigger automatically sets the country to India before a new employee is inserted.

# Trigger Events
A trigger can be executed when one of three events occurs:
```
- INSERT
- UPDATE
- DELETE
```

### 2. BEFORE INSERT
Meaning / Use:
Executes the trigger before a new row is inserted into a table.

Syntax:
```
CREATE TRIGGER <trigger_name>
BEFORE INSERT
ON <table_name>
FOR EACH ROW
BEGIN
    <statements>;
END;
```
Example:
```
DELIMITER //

CREATE TRIGGER before_employee_insert
BEFORE INSERT
ON employees
FOR EACH ROW
BEGIN
    SET NEW.country = 'India';
END //

DELIMITER ;
```

### 3. AFTER INSERT
Meaning / Use:
Executes the trigger after a new row has been inserted.

Syntax:
```
CREATE TRIGGER <trigger_name>
AFTER INSERT
ON <table_name>
FOR EACH ROW
BEGIN
    <statements>;
END;
```
Example:
```
DELIMITER //

CREATE TRIGGER after_employee_insert
AFTER INSERT
ON employees
FOR EACH ROW
BEGIN
    INSERT INTO employee_log(employee_id, action)
    VALUES (NEW.employee_id, 'Employee Added');
END //

DELIMITER ;
```

### 4. BEFORE UPDATE
Meaning / Use:
Executes the trigger before an existing row is updated.

Syntax:
```
CREATE TRIGGER <trigger_name>
BEFORE UPDATE
ON <table_name>
FOR EACH ROW
BEGIN
    <statements>;
END;
```
Example:
```
DELIMITER //

CREATE TRIGGER before_employee_update
BEFORE UPDATE
ON employees
FOR EACH ROW
BEGIN
    SET NEW.salary = ABS(NEW.salary);
END //

DELIMITER ;
```

### 5. AFTER UPDATE
Meaning / Use:
Executes the trigger after an existing row has been updated.

Syntax:
```
CREATE TRIGGER <trigger_name>
AFTER UPDATE
ON <table_name>
FOR EACH ROW
BEGIN
    <statements>;
END;
```
Example:
```
CREATE TRIGGER <trigger_name>
AFTER UPDATE
ON <table_name>
FOR EACH ROW
BEGIN
    INSERT INTO employee_log(employee_id, action)
    VALUES (NEW.employee_id, 'Employee Updated');
END //

DELIMITER ;
```

### 6. BEFORE DELETE
Meaning / Use:
Executes the trigger before a row is deleted from a table.

Syntax:

CREATE TRIGGER <trigger_name>
BEFORE DELETE
ON <table_name>
FOR EACH ROW
BEGIN
    <statements>;
END;

Example:

DELIMITER //

CREATE TRIGGER before_employee_delete
BEFORE DELETE
ON employees
FOR EACH ROW
BEGIN
    INSERT INTO employee_log(employee_id, action)
    VALUES (OLD.employee_id, 'Employee Deleted');
END //

DELIMITER ;
40. AFTER DELETE

Meaning / Use:
Executes the trigger after a row has been deleted from a table.

Syntax:

CREATE TRIGGER <trigger_name>
AFTER DELETE
ON <table_name>
FOR EACH ROW
BEGIN
    <statements>;
END;

Example:

DELIMITER //

CREATE TRIGGER after_employee_delete
AFTER DELETE
ON employees
FOR EACH ROW
BEGIN
    INSERT INTO employee_log(employee_id, action)
    VALUES (OLD.employee_id, 'Employee Deleted');
END //

DELIMITER ; 














