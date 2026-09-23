# ***Continuing MySQL Programming***

# Error Handling
Error handlers are used to handle conditions or errors that occur while executing stored programs.

### 30. DECLARE HANDLER
Meaning / Use:
Used to define what MySQL should do when a specified condition occurs.

Syntax:
```
DECLARE <action> HANDLER
FOR <condition>
<statement>;
```
Example:
```
DECLARE CONTINUE HANDLER
FOR NOT FOUND
SET done = TRUE;
```

### 31. CONTINUE HANDLER
Meaning / Use:
Handles an error or condition and then continues execution of the program.

Syntax:
```
DECLARE CONTINUE HANDLER
FOR <condition>
<statement>;
```
Example:
```
DECLARE CONTINUE HANDLER
FOR NOT FOUND
SET done = TRUE;
```

### 32. EXIT HANDLER
Meaning / Use:
Handles an error or condition and exits the current BEGIN...END block.

Syntax:
```
DECLARE EXIT HANDLER
FOR <condition>
<statement>;
```
Example:
```
DECLARE EXIT HANDLER
FOR SQLEXCEPTION
ROLLBACK;
```



