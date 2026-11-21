
# ***MySQL Transactions***
A Transaction is a group of SQL operations treated as a single unit of work. It helps maintain data consistency by ensuring that changes are saved permanently or undone when necessary.
> Important : **Transactions require a transactional storage engine, such as InnoDB.**
**Example use cases: Bank transfers, payment processing, and updating multiple related records.**

### 1. START TRANSACTION
Meaning / Use:
START TRANSACTION begins a new transaction. Changes made after this statement can be saved using COMMIT or undone using ROLLBACK.

Syntax:
```
START TRANSACTION;
```

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
> Explanation:
This transfers 1000 from account 1 to account 2. Both updates are committed together if the statements succeed and the transaction is committed.


### 2. COMMIT
Meaning / Use:
COMMIT permanently saves the changes made during the current transaction.

Syntax:
```
COMMIT;
```

Example:
```
START TRANSACTION;

UPDATE employees
SET salary = 60000
WHERE employee_id = 101;

COMMIT;
```
> Explanation:
The updated salary is saved permanently, subject to the table's storage engine and transaction behavior.

### 3. ROLLBACK
Meaning / Use:
ROLLBACK cancels the changes made during the current transaction that have not yet been committed.

Syntax:
```
ROLLBACK;
```

Example:
```
START TRANSACTION;

UPDATE employees
SET salary = 90000
WHERE employee_id = 101;

ROLLBACK;

```
> Explanation:
The salary change is undone, and the value returns to what it was before the transaction began.
> **Important: ROLLBACK cannot undo changes that have already been committed.**

### 4. SAVEPOINT
Meaning / Use:
SAVEPOINT creates a named point inside a transaction. You can roll back to that point without undoing the entire transaction.
Syntax:
```
SAVEPOINT savepoint_name;
```

To roll back to a savepoint:
```
ROLLBACK TO SAVEPOINT savepoint_name;
```

To remove a savepoint:
```
RELEASE SAVEPOINT savepoint_name;
```

Example:
```
START TRANSACTION;

UPDATE employees
SET salary = 60000
WHERE employee_id = 101;

SAVEPOINT sp1;

UPDATE employees
SET salary = 70000
WHERE employee_id = 102;

ROLLBACK TO SAVEPOINT sp1;

COMMIT;
```

> Explanation:
- `1. The salary of employee 101 is updated to 60000.`
- `2. A savepoint named sp1 is created.`
- `3. The salary of employee 102 is updated to 70000.`
- `4. ROLLBACK TO SAVEPOINT sp1 undoes the second update.`
- `5. COMMIT saves the first update.`
**The final result is that employee 101's change is saved, while employee 102's change is undone.**

```
START TRANSACTION
        |
        v
  Execute SQL queries
        |
        v
  Any issue or mistake?
     /          \
   Yes           No
    |             |
    v             v
 ROLLBACK       COMMIT
    |             |
    v             v
 Undo changes   Save changes

```
