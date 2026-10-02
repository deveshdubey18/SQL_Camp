# ***Functions***

# 1. String Functions
Meaning / Use:
String functions are used to manipulate and work with text/string values.

### 1. CONCAT()
Meaning / Use:
Combines two or more strings.

Syntax:
```
CONCAT(string1, string2, ...);
```
Example:
```
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees;
```

### 2. UPPER()
Meaning / Use:
Converts a string to uppercase.

Syntax:
```
UPPER(string);
```
Example:
```
SELECT UPPER(employee_name)
FROM employees;
```

### 3. LOWER()
Meaning / Use:
Converts a string to lowercase.

Syntax:
```
LOWER(string);
```
Example:
```
SELECT LOWER(employee_name)
FROM employees;
```

### 4. LENGTH()
Meaning / Use:
Returns the length of a string in bytes.

Syntax:
```
LENGTH(string);
```
Example:
```
SELECT LENGTH(employee_name)
FROM employees;
```

### 5. CHAR_LENGTH()
Meaning / Use:
Returns the number of characters in a string.

Syntax:
```
CHAR_LENGTH(string);
```
Example:
```
SELECT CHAR_LENGTH(employee_name)
FROM employees;
```

### 6. SUBSTRING()
Meaning / Use:
Extracts a portion of a string.

Syntax:
```
SUBSTRING(string, start_position, length);
```
Example:
```
SELECT SUBSTRING(employee_name, 1, 5)
FROM employees;
```

### 7. LEFT()
Meaning / Use:
Returns a specified number of characters from the left side of a string.

Syntax:
```
LEFT(string, number);
```
Example:
```
SELECT LEFT(employee_name, 3)
FROM employees;
```

### 8. RIGHT()
Meaning / Use:
Returns a specified number of characters from the right side of a string.

Syntax:
```
RIGHT(string, number);
```
Example:
```
SELECT RIGHT(employee_name, 3)
FROM employees;
```

### 9. TRIM()
Meaning / Use:
Removes leading and trailing spaces from a string.

Syntax:

TRIM(string);

Example:

SELECT TRIM(employee_name)
FROM employees;


### 10. REPLACE()
Meaning / Use:
Replaces occurrences of a specified string with another string.

Syntax:

REPLACE(string, old_string, new_string);

Example:

SELECT REPLACE(employee_name, 'A', 'X')
FROM employees;
