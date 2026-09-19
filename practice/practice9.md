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
> It is commonly used inside stored procedures, functions, loops, and conditional statements.

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
