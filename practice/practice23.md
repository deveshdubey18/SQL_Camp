
# Transaction Properties (ACID)
Meaning / Use:
ACID represents the four properties that help ensure reliable database transactions. These are concepts rather than SQL commands.


### 1. Atomicity
Meaning / Use:
A transaction is treated as one unit: either all its changes succeed, or its changes are rolled back.

Example:
```
START TRANSACTION;

UPDATE accounts
SET balance = balance - 1000
WHERE account_id = 1;

UPDATE accounts
SET balance = balance + 1000
WHERE account_id = 2;

COMMIT;
```
> If the transaction is rolled back before committing, both updates are undone.

### 2. Consistency
Meaning / Use:
A transaction should move the database from one valid state to another while maintaining applicable constraints and rules.

Example:
```
CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    balance DECIMAL(10,2) CHECK (balance >= 0)
) ENGINE = InnoDB;
```

> The constraint prevents negative balances from being stored through ordinary operations that violate it.

### 3. Isolation
Meaning / Use:
Concurrent transactions are isolated according to the selected isolation level, reducing unwanted interference between them.

Example:
```
SET SESSION TRANSACTION ISOLATION LEVEL
REPEATABLE READ;

START TRANSACTION;

SELECT balance
FROM accounts
WHERE account_id = 1;

COMMIT;
```
>In InnoDB, the consistent read uses a transaction snapshot.

### 4. Durability
Meaning / Use:
Once a transaction is successfully committed, its changes are intended to persist even after a system failure, subject to the database's durability configuration and hardware reliability.

Example:
```
START TRANSACTION;

UPDATE accounts
SET balance = 5000
WHERE account_id = 1;

COMMIT;
```
