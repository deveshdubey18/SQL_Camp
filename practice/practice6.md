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
ON company.employees
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

### 5. GRANT COLUMN-LEVEL PRIVILEGE
Meaning / Use:
Used to give a user permission to access specific columns of a table.

Syntax:
```
GRANT <privilege> (<column1>, <column2>)
ON <database_name>.<table_name>
TO '<username>'@'<host>';
```
Example:
```
GRANT SELECT (name, salary)
ON company.employees
TO 'user1'@'localhost';
```
> This allows the user to select only the specified columns.

### 6. REVOKE
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

### 7. REVOKE MULTIPLE PRIVILEGES
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

### 8. REVOKE ALL PRIVILEGES
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

# MySQL user and privilege management also commonly uses:

- `CREATE USER`
- `ALTER USER`
- `DROP USER`
- `SHOW GRANTS`

---

## 1. CREATE USER

**Meaning / Use:**  
Used to create a new user account in MySQL.

**Syntax:**

```sql
CREATE USER '<username>'@'<host>'
IDENTIFIED BY '<password>';

Example:

CREATE USER 'user1'@'localhost'
IDENTIFIED BY 'password123';
2. CREATE USER IF NOT EXISTS

Meaning / Use:
Creates a new user only if the user does not already exist.

Syntax:

CREATE USER IF NOT EXISTS '<username>'@'<host>'
IDENTIFIED BY '<password>';

Example:

CREATE USER IF NOT EXISTS 'user1'@'localhost'
IDENTIFIED BY 'password123';
3. ALTER USER

Meaning / Use:
Used to modify an existing MySQL user account.

Syntax:

ALTER USER '<username>'@'<host>'
IDENTIFIED BY '<new_password>';

Example:

ALTER USER 'user1'@'localhost'
IDENTIFIED BY 'newpassword123';

This changes the user's password.

4. ALTER USER — ACCOUNT LOCK

Meaning / Use:
Used to lock or unlock a MySQL user account.

Lock Account:

ALTER USER '<username>'@'<host>'
ACCOUNT LOCK;

Example:

ALTER USER 'user1'@'localhost'
ACCOUNT LOCK;

Unlock Account:

ALTER USER '<username>'@'<host>'
ACCOUNT UNLOCK;

Example:

ALTER USER 'user1'@'localhost'
ACCOUNT UNLOCK;
5. DROP USER

Meaning / Use:
Used to permanently remove a user account from MySQL.

Syntax:

DROP USER '<username>'@'<host>';

Example:

DROP USER 'user1'@'localhost';
6. DROP USER IF EXISTS

Meaning / Use:
Deletes a user if the user exists. Prevents an error if the user does not exist.

Syntax:

DROP USER IF EXISTS '<username>'@'<host>';

Example:

DROP USER IF EXISTS 'user1'@'localhost';

### 16. SHOW GRANTS

Meaning / Use:
Used to display the privileges currently assigned to a MySQL user.

Syntax:

SHOW GRANTS
FOR '<username>'@'<host>';

Example:

SHOW GRANTS
FOR 'user1'@'localhost';

This shows the permissions granted to user1.

17. SHOW GRANTS FOR CURRENT USER

Meaning / Use:
Used to display the privileges of the currently logged-in MySQL user.

Syntax:

SHOW GRANTS;

Example:

SHOW GRANTS;



