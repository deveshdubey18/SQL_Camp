# ***Continuing Functions***

# 3. Date & Time Functions
Meaning / Use:
Date and time functions are used to work with dates, times, and date calculations.
3.1 CURDATE()
Meaning / Use:
Returns the current date.
Syntax:
CURDATE();

Example:
SELECT CURDATE();

3.2 CURTIME()
Meaning / Use:
Returns the current time.
Syntax:
CURTIME();

Example:
SELECT CURTIME();

3.3 NOW()
Meaning / Use:
Returns the current date and time.
Syntax:
NOW();

Example:
SELECT NOW();

3.4 YEAR()
Meaning / Use:
Extracts the year from a date.
Syntax:
YEAR(date);

Example:
SELECT YEAR(joining_date)
FROM employees;

3.5 MONTH()
Meaning / Use:
Extracts the month from a date.
Syntax:
MONTH(date);

Example:
SELECT MONTH(joining_date)
FROM employees;

3.6 DAY()
Meaning / Use:
Extracts the day of the month from a date.
Syntax:
DAY(date);

Example:
SELECT DAY(joining_date)
FROM employees;

3.7 DATEDIFF()
Meaning / Use:
Returns the difference between two dates in days.
Syntax:
DATEDIFF(date1, date2);

Example:
SELECT DATEDIFF(CURDATE(), joining_date)
FROM employees;

3.8 DATE_ADD()
Meaning / Use:
Adds a specified time interval to a date.
Syntax:
DATE_ADD(date, INTERVAL value unit);

Example:
SELECT DATE_ADD(joining_date, INTERVAL 1 YEAR)
FROM employees;

3.9 DATE_SUB()
Meaning / Use:
Subtracts a specified time interval from a date.
Syntax:
DATE_SUB(date, INTERVAL value unit);

Example:
SELECT DATE_SUB(CURDATE(), INTERVAL 30 DAY);

3.10 DATE_FORMAT()
Meaning / Use:
Formats a date into a specified format.
Syntax:
DATE_FORMAT(date, format);

Example:
SELECT DATE_FORMAT(joining_date, '%d-%m-%Y')
FROM employees;
