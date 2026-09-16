

DCL
│
├── User Management
│   ├── CREATE USER
│   ├── CREATE USER IF NOT EXISTS
│   ├── ALTER USER
│   │   ├── ACCOUNT LOCK
│   │   └── ACCOUNT UNLOCK
│   ├── DROP USER
│   └── DROP USER IF EXISTS
│
├── Privilege Management
│   ├── GRANT
│   │   ├── GRANT privilege
│   │   ├── GRANT multiple privileges
│   │   ├── GRANT ALL PRIVILEGES
│   │   ├── GRANT privilege ON database
│   │   ├── GRANT privilege ON table
│   │   └── GRANT column-level privilege
│   │
│   └── REVOKE
│       ├── REVOKE privilege
│       ├── REVOKE multiple privileges
│       └── REVOKE ALL PRIVILEGES
│
├── Privilege Checking
│   ├── SHOW GRANTS
│   └── SHOW GRANTS FOR CURRENT USER
│
└── Common Privileges
    ├── SELECT
    ├── INSERT
    ├── UPDATE
    ├── DELETE
    ├── CREATE
    ├── ALTER
    ├── DROP
    ├── INDEX
    ├── EXECUTE
    ├── REFERENCES
    └── ALL PRIVILEGES
