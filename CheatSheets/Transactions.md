```
Transactions
│
├── Transaction Control
│   ├── START TRANSACTION
│   ├── BEGIN
│   ├── COMMIT
│   └── ROLLBACK
│
├── Savepoint Management
│   ├── SAVEPOINT
│   ├── ROLLBACK TO SAVEPOINT
│   └── RELEASE SAVEPOINT
│
├── Transaction Configuration
│   ├── SET autocommit
│   ├── SET TRANSACTION
│   ├── SET SESSION TRANSACTION ISOLATION LEVEL
│   └── SET GLOBAL TRANSACTION ISOLATION LEVEL
│
├── Transaction Isolation Levels
│   ├── READ UNCOMMITTED
│   ├── READ COMMITTED
│   ├── REPEATABLE READ
│   └── SERIALIZABLE
│
├── Transaction Properties (ACID)
│   ├── Atomicity
│   ├── Consistency
│   ├── Isolation
│   └── Durability
│
└── Transaction Monitoring
    ├── SELECT @@autocommit
    ├── SELECT @@transaction_isolation
    └── SHOW ENGINE INNODB STATUS
