# ***Continuing Triggers***

# NEW and OLD
NEW and OLD are special keywords used inside triggers to access row values.

### 8. NEW
Meaning / Use:
Refers to the new value of a row.

Commonly used with:
```
INSERT
UPDATE
```
Example:
```
SET NEW.salary = 60000;
```

### 9. OLD
Meaning / Use:
Refers to the existing/old value of a row before a change.

Commonly used with:
```
UPDATE
DELETE
```

Example:
```
INSERT INTO employee_log(old_salary)
VALUES (OLD.salary);
```
