## SQL
SQL is  Structured Query language. It is use to store data and manipulate the data.
### SQL consist of : 
  - DDL
  - DML
  - DQL
  - DCL


## DDL — Data Definition Language

DDL is used to create, modify, and delete the structure of database objects such as databases, tables, columns, views, and indexes.

### 1. CREATE DATABASE
Use: To create a new database.

Example:
```
CREATE DATABASE <database_name>;
```

### 2. SHOW DATABASES
Use: To display all databases available on the server.

Example:
```
SHOW DATABASES;
```
### 3. USE DATABASE
Use: To select a database for performing operations.

Example:
```
USE <database_name>;
```
### 4. CREATE TABLE
Use: To create a new table inside a database.

Example:
```
CREATE TABLE <table_name> (
    <column_name> <data_type>,
    <column_name> <data_type>
);
```

### 5. SHOW TABLES
Use: To display all tables in the selected database.

Example:
```
SHOW TABLES;
```

### 6. DESCRIBE TABLE
Use: To display the structure and details of a table.

Example:
```
DESCRIBE <table_name>;
or
DESC <table_name>;
```

### 7. ALTER TABLE — ADD COLUMN
Use: To add a new column to an existing table.

Example:
```
ALTER TABLE <table_name>
ADD <column_name> <data_type>;
```

### 8. ALTER TABLE — MODIFY COLUMN
Use: To modify the data type or definition of an existing column.

Example:
```
ALTER TABLE <table_name>
MODIFY <column_name> <new_data_type>;
```

### 9. ALTER TABLE — RENAME COLUMN
Use: To rename an existing column.

Example:
```
ALTER TABLE <table_name>
RENAME COLUMN <old_column_name>
TO <new_column_name>;
```

### 10. ALTER TABLE — DROP COLUMN
Use: To remove a column from an existing table.

Example:
```
ALTER TABLE <table_name>
DROP COLUMN <column_name>;
```

### 11. ALTER TABLE — ADD CONSTRAINT
Use: To add a constraint to an existing table.

Example:
```
ALTER TABLE <table_name>
ADD CONSTRAINT <constraint_name>
<constraint_definition>;
```

### 12. RENAME TABLE
Use: To change the name of an existing table.

Example:
```
RENAME TABLE <old_table_name>
TO <new_table_name>;
```

### 13. TRUNCATE TABLE
Use: To remove all records from a table while keeping its structure.

Example:
```
TRUNCATE TABLE <table_name>;
```

### 14. DROP TABLE
Use: To completely delete a table, including its data and structure.

Example:
```
DROP TABLE <table_name>;
```

### 15. DROP DATABASE
Use: To completely delete a database and all objects inside it.

Example:
```
DROP DATABASE <database_name>;
```












