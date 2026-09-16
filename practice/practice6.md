# DCL — Data Control Language
DCL is used to **control access and permissions** on database objects such as databases, tables, views, and other resources.

### The main DCL commands are:
- `GRANT`
- `REVOKE`
> DCL is mainly used by database administrators to manage user privileges and access.

### Common DCL Privileges
> These privileges are commonly used with ```GRANT and REVOKE```.<br>
**Privileges and their uses**
```
SELECT	- Allows reading data
INSERT	- Allows inserting data
UPDATE	- Allows modifying data
DELETE	- Allows deleting data
CREATE	- Allows creating database objects
ALTER	- Allows modifying database objects
DROP	- Allows deleting database objects
INDEX	- Allows creating or dropping indexes
EXECUTE	- Allows executing stored procedures/functions
REFERENCES	- Allows creating foreign key references
ALL PRIVILEGES	- Grants all applicable privileges
```


### 1. GRANT
**Meaning / Use:**  
Used to give specific privileges or permissions to a user.
Syntax:

```
GRANT <privilege>
ON <database_or_table>
TO <user>;
```
Example :
```
GRANT SELECT
ON company.employees
TO 'user1'@'localhost';
```

### 2. GRANT MULTIPLE PRIVILEGES
Meaning / Use:
Used to give multiple privileges to a user at the same time.

Syntax:
```
GRANT <privilege1>, <privilege2>, <privilege3>
ON <database_or_table>
TO <user>;
```
Example:
```
GRANT SELECT, INSERT, UPDATE
ON company.employees
TO 'user1'@'localhost';
```

### 3. GRANT ALL PRIVILEGES
Meaning / Use:
Used to give all available privileges on a specified database or table.

Syntax:
```
GRANT ALL PRIVILEGES
ON <database_or_table>
TO <user>;
```
Example:
```
GRANT ALL PRIVILEGES
ON company.*
TO 'user1'@'localhost';
```
> ```* means all tables within the specified database.```

### 4. GRANT PRIVILEGE ON ALL TABLES
Meaning / Use:
Used to give a privilege on all tables within a database.

Syntax:
```
GRANT <privilege>
ON <database_name>.*
TO <user>;
```
Example:
```
GRANT SELECT
ON company.*
TO 'user1'@'localhost';
```
> This allows the user to read data from all tables in the company database.

### 5. REVOKE
Meaning / Use:
Used to remove a previously granted privilege from a user.

Syntax:
```
REVOKE <privilege>
ON <database_or_table>
FROM <user>;
```
Example:
```
REVOKE SELECT
ON company.employees
FROM 'user1'@'localhost';
```

### 6. REVOKE MULTIPLE PRIVILEGES
Meaning / Use:
Used to remove multiple privileges from a user.

Syntax:
```
REVOKE <privilege1>, <privilege2>
ON <database_or_table>
FROM <user>;
```
Example:
```
REVOKE INSERT, UPDATE
ON company.employees
FROM 'user1'@'localhost';
```

### 7. REVOKE ALL PRIVILEGES
Meaning / Use:
Used to remove all privileges from a user for a specified database or table.

Syntax:
```
REVOKE ALL PRIVILEGES
ON <database_or_table>
FROM <user>;
```
Example:
```
REVOKE ALL PRIVILEGES
ON company.*
FROM 'user1'@'localhost';
```





