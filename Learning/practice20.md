# ***Continuing Functions***

# 3. Date & Time Functions
Meaning / Use:
Date and time functions are used to work with dates, times, and date calculations.

### 1. CURDATE()
Meaning / Use:
Returns the current date.

Syntax:
```
CURDATE();
```
Example:
```
SELECT CURDATE();
```

### 2. CURTIME()
Meaning / Use:
Returns the current time.

Syntax:
```
CURTIME();
```
Example:
```
SELECT CURTIME();
```

### 3. NOW()
Meaning / Use:
Returns the current date and time.

Syntax:
```
NOW();
```
Example:
```
SELECT NOW();
```

### 4. YEAR()
Meaning / Use:
Extracts the year from a date.

Syntax:
```
YEAR(date);
```
Example:
```
SELECT YEAR(joining_date)
FROM employees;
```

### 5. MONTH()
Meaning / Use:
Extracts the month from a date.
Syntax:
```
MONTH(date);
```
Example:
```
SELECT MONTH(joining_date)
FROM employees;
```

### 6. DAY()
Meaning / Use:
Extracts the day of the month from a date.

Syntax:
```
DAY(date);
```
Example:
```
SELECT DAY(joining_date)
FROM employees;
```

### 7. DATEDIFF()
Meaning / Use:
Returns the difference between two dates in days.

Syntax:
```
DATEDIFF(date1, date2);
```
Example:
```
SELECT DATEDIFF(CURDATE(), joining_date)
FROM employees;
```

### 8. DATE_ADD()
Meaning / Use:
Adds a specified time interval to a date.

Syntax:
```
DATE_ADD(date, INTERVAL value unit);
```
Example:
```
SELECT DATE_ADD(joining_date, INTERVAL 1 YEAR)
FROM employees;
```

### 9. DATE_SUB()
Meaning / Use:
Subtracts a specified time interval from a date.

Syntax:
```
DATE_SUB(date, INTERVAL value unit);
```
Example:
```
SELECT DATE_SUB(CURDATE(), INTERVAL 30 DAY);
```

### 10. DATE_FORMAT()
Meaning / Use:
Formats a date into a specified format.

Syntax:
```
DATE_FORMAT(date, format);
```
Example:
```
SELECT DATE_FORMAT(joining_date, '%d-%m-%Y')
FROM employees;
```

# 4. Aggregate Functions
Meaning / Use:
Aggregate functions perform calculations on multiple rows and return a single result.

### 1. COUNT()
Meaning / Use:
Returns the number of rows or non-NULL values.

Syntax:
```
COUNT(column_name);
```
Example:
```
SELECT COUNT(employee_id)
FROM employees;
```

### 2. SUM()
Meaning / Use:
Returns the total of numeric values.

Syntax:
```
SUM(column_name);
```
Example:
```
SELECT SUM(salary)
FROM employees;
```
### 3. AVG()
Meaning / Use:
Returns the average of numeric values.\

Syntax:
```
AVG(column_name);
```
Example:
```
SELECT AVG(salary)
FROM employees;
```

### 4. MIN()
Meaning / Use:
Returns the minimum value.

Syntax:
```
MIN(column_name);
```
Example:
```
SELECT MIN(salary)
FROM employees;
```

### 5. MAX()
Meaning / Use:
Returns the maximum value.

Syntax:
```
MAX(column_name);
```
Example:
```
SELECT MAX(salary)
FROM employees;
```





