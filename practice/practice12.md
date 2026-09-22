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





