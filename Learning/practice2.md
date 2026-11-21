# DML — Data Manipulation Language

DML is used to **add, modify, and delete data stored inside database tables**.

The main DML commands are:

- `INSERT`
- `UPDATE`
- `DELETE`

> **Note:** `SELECT` is generally classified separately as DQL (Data Query Language).

---

### 1. INSERT
Use : Used to insert new records into a table.

Example
```sql
INSERT INTO <table_name>
VALUES (<value1>, <value2>, <value3>);
```

### 2. INSERT INTO SPECIFIC COLUMNS
Meaning / Use:
Used to insert values into specific columns of a table.

Syntax:
```
INSERT INTO <table_name> (
    <column1>,
    <column2>,
    <column3>
)
VALUES (
    <value1>,
    <value2>,
    <value3>
);
```

### 3. INSERT MULTIPLE ROWS
Meaning / Use:
Used to insert multiple records into a table using a single INSERT statement.

Syntax:
```
INSERT INTO <table_name>
VALUES
    (<value1>, <value2>),
    (<value1>, <value2>),
    (<value1>, <value2>);
```

### 4. INSERT MULTIPLE ROWS USING COLUMNS
Meaning / Use:
Used to insert multiple records while explicitly specifying the columns.

Syntax:
```
INSERT INTO <table_name> (
    <column1>,
    <column2>,
    <column3>
)
VALUES
    (<value1>, <value2>, <value3>),
    (<value1>, <value2>, <value3>);
```

### 5. INSERT INTO ... SELECT
Meaning / Use:
Used to copy data from one table into another table.

Syntax:
```
INSERT INTO <target_table> (
    <column1>,
    <column2>
)
SELECT
    <column1>,
    <column2>
FROM <source_table>;
```


### 6. UPDATE
Meaning / Use:
Used to modify existing records in a table.

Syntax:
```
UPDATE <table_name>
SET <column_name> = <new_value>
WHERE <condition>;
```
> **Important: Always use `WHERE` when you only want to update specific records.**
---


### 7. UPDATE MULTIPLE COLUMNS
Meaning / Use:
Used to modify multiple columns of an existing record.

Syntax:
```
UPDATE <table_name>
SET
    <column1> = <value1>,
    <column2> = <value2>
WHERE <condition>;
```

### 8. UPDATE MULTIPLE ROWS
Meaning / Use:
Used to update multiple records that satisfy a condition.

Syntax:
```
UPDATE <table_name>
SET <column_name> = <new_value>
WHERE <condition>;
```

### 9. UPDATE WITHOUT WHERE
Meaning / Use:
Used to update a column for every row in a table.

Syntax:
```
UPDATE <table_name>
SET <column_name> = <new_value>;
```
> **Warning: This updates every record in the table.**
---

### 10. DELETE
Meaning / Use:
Used to delete specific records from a table.

Syntax:
```
DELETE FROM <table_name>
WHERE <condition>;
```

### 11. DELETE MULTIPLE ROWS
Meaning / Use:
Used to delete multiple records that satisfy a condition.

Syntax:
```
DELETE FROM <table_name>
WHERE <condition>;
```

### 12. DELETE ALL ROWS
Meaning / Use:
Used to delete all records from a table while keeping the table structure.

Syntax:
```
DELETE FROM <table_name>;
```
> **Warning: This deletes all rows from the table.**
---

### 13. DELETE USING MULTIPLE CONDITIONS
Meaning / Use:
Used to delete records based on multiple conditions.

Syntax:
```
DELETE FROM <table_name>
WHERE <condition1>
AND <condition2>;
```

### 14. DELETE USING IN
Meaning / Use:
Used to delete records where a column matches any value in a given list.

Syntax:
```
DELETE FROM <table_name>
WHERE <column_name> IN (<value1>, <value2>);
```

### 15. DELETE USING BETWEEN
Meaning / Use:
Used to delete records where a value falls within a specified range.

Syntax:
```
DELETE FROM <table_name>
WHERE <column_name> BETWEEN <value1> AND <value2>;
```  



