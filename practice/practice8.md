
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








