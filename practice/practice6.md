# DCL — Data Control Language

DCL is used to **control access and permissions** on database objects such as databases, tables, views, and other resources.

The main DCL commands are:

- `GRANT`
- `REVOKE`

> DCL is mainly used by database administrators to manage user privileges and access.

---

## 1. GRANT

**Meaning / Use:**  
Used to give specific privileges or permissions to a user.

**Syntax:**

```sql
GRANT <privilege>
ON <database_or_table>
TO <user>;
