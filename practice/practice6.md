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
