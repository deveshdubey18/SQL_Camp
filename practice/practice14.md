
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



