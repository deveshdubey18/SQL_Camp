# 1. Transaction Configuration

### 1.1 SET autocommit
Meaning / Use:
Controls whether MySQL automatically commits each successful statement. When autocommit is enabled, each statement is committed automatically unless an explicit transaction is active.

Syntax:
```
SET autocommit = 0;
SET autocommit = 1;
```

Example:
```
-- Disable automatic commits
SET autocommit = 0;

UPDATE employees
SET salary = 60000
WHERE employee_id = 101;

-- Save the change
COMMIT;

-- Enable automatic commits
SET autocommit = 1;


- 0 = Disabled
- 1 = Enabled
```

### 1.2 SET TRANSACTION
Meaning / Use:
Sets transaction characteristics, such as the isolation level or access mode, for a transaction. Without SESSION or GLOBAL, the setting applies to the next transaction.

Syntax:
```
SET TRANSACTION
ISOLATION LEVEL isolation_level;


Or:
SET TRANSACTION
READ ONLY;
```

Example:
```
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

START TRANSACTION;

SELECT *
FROM employees;

COMMIT;
```
> This sets the isolation level for the next transaction.

### 1.3 SET SESSION TRANSACTION ISOLATION LEVEL
Meaning / Use:
Sets the default transaction isolation level for the current MySQL session. It affects subsequent transactions in that connection.

Syntax:
```
SET SESSION TRANSACTION ISOLATION LEVEL
isolation_level;
```

Example:
```
SET SESSION TRANSACTION ISOLATION LEVEL READ COMMITTED;

START TRANSACTION;

SELECT *
FROM employees;

COMMIT;
```
> The session's default isolation level is now READ COMMITTED.

### 1.4 SET GLOBAL TRANSACTION ISOLATION LEVEL
Meaning / Use:
Sets the default transaction isolation level for new sessions connecting to the MySQL server. It does not change the isolation level of existing sessions.

Syntax:
```
SET GLOBAL TRANSACTION ISOLATION LEVEL
isolation_level;
```

Example:
```SET GLOBAL TRANSACTION ISOLATION LEVEL READ COMMITTED;
```

> Note: This requires appropriate administrative privileges. New sessions use the new default unless they set their own isolation level.
n levels determine how transactions interact with changes made by other concurrent transactions. MySQL InnoDB supports four standard isolation levels.
