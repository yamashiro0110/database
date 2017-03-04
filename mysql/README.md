# MySQL 使い方メモ

## create database

```sql
CREATE DATABASE [IF NOT EXISTS] ${db_name} DEFAULT CHARACTER SET ${charset} COLLATE ${collation};
```

> ex) CREATE DATABASE sample_db DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

## create user

```sql
CREATE USER ${user_name}@${hostname} IDENTIFIED BY [PASSWORD] '${password}';
```

> ex) CREATE USER `sample_user`@`localhost` IDENTIFIED BY 'sample_user';

> ex) CREATE USER `sample_user`@`%` IDENTIFIED BY 'sample_user';

## user grant

```sql
GRANT ALL PRIVILEGES ON ${db_name}.* TO ${user_name}@${hostname};
```

> ex) GRANT ALL PRIVILEGES ON sample_db.* TO `sample_user`@`localhost`;

> ex) GRANT ALL PRIVILEGES ON sample_db.* TO `sample_user`@`%`;

## show

variables

```sql
show variables like "chara%";
```

user grant

```sql
SHOW GRANTS FOR ${username}@${hostname};
```
