
# Continuing MySQL Programming
---
# CASE Statement
***MySQL supports two forms of CASE:***
```
Simple CASE
Searched CASE
```

### 8. Simple CASE
Meaning / Use:
Compares an expression with different values.

Syntax:
```
CASE <expression>

    WHEN <value1> THEN
        <result1>

    WHEN <value2> THEN
        <result2>

    ELSE
        <result>

END CASE;
```
Example:
```
CASE department_id

    WHEN 101 THEN
        SET department_name = 'IT';

    WHEN 102 THEN
        SET department_name = 'HR';

    WHEN 103 THEN
        SET department_name = 'Finance';

    ELSE
        SET department_name = 'Unknown';

END CASE;
```

### 9. Searched CASE
Meaning / Use:
Checks multiple conditions instead of comparing a single expression.

Syntax:
```
CASE

    WHEN <condition1> THEN
        <result1>

    WHEN <condition2> THEN
        <result2>

    ELSE
        <result>

END CASE;
```
Example:
```
CASE

    WHEN salary >= 70000 THEN
        SET salary_grade = 'A';

    WHEN salary >= 50000 THEN
        SET salary_grade = 'B';

    ELSE
        SET salary_grade = 'C';

END CASE;
```

# LOOPS
Loops are used to execute a block of SQL statements repeatedly.

***MySQL provides three main loop structures:***
```
- LOOP
- WHILE
- REPEAT
```

### 10. LOOP
Meaning / Use:
Creates a loop that continues executing until it is explicitly stopped using LEAVE.

Syntax:
```
[label:] LOOP

    <statements>;

END LOOP [label];
```
Example:
```
SET counter = 1;

my_loop: LOOP

    SET counter = counter + 1;

    IF counter >= 10 THEN
        LEAVE my_loop;
    END IF;

END LOOP my_loop;
```

### 11. WHILE LOOP
Meaning / Use:
Repeats statements as long as the specified condition is true.

Syntax:
```
WHILE <condition> DO

    <statements>;

END WHILE;
```
Example:
```
SET counter = 1;

WHILE counter <= 5 DO

    SET counter = counter + 1;

END WHILE;
```

### 12. REPEAT LOOP
Meaning / Use:
Repeats statements until the specified condition becomes true.
- The statements execute at least once.

Syntax:
```
REPEAT

    <statements>;

UNTIL <condition>

END REPEAT;
```
Example:
```
SET counter = 1;

REPEAT

    SET counter = counter + 1;

UNTIL counter >= 5

END REPEAT;
```

# LOOPS Controls
### 13.Leave
Meaning / Use:
Used to exit a loop or labeled block immediately.

Syntax:
```
LEAVE <label>;
```
Example:
```
my_loop: LOOP

    IF counter >= 5 THEN
        LEAVE my_loop;
    END IF;

END LOOP my_loop;
```

### 14. ITERATE
Meaning / Use:
Skips the remaining statements in the current loop iteration and starts the next iteration.

Syntax:
```
ITERATE <label>;
```
Example:
```
my_loop: LOOP

    SET counter = counter + 1;

    IF counter = 3 THEN
        ITERATE my_loop;
    END IF;

END LOOP my_loop;
```





