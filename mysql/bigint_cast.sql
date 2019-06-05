-- ## mysqlでBIGINT UNSIGNEDのcolumnの値を負の数に変換する

-- mysql version
mysql> select version();
+-----------+
| version() |
+-----------+
| 5.7.17    |
+-----------+
1 row in set (0.01 sec)

-- -1を掛けるとエラーになる
mysql> SELECT (amount * -1) FROM big_amount;
ERROR 1690 (22003): BIGINT UNSIGNED value is out of range in '(`sample_db`.`big_amount`.`amount` * -(1))'


-- test table create
mysql> CREATE TABLE IF NOT EXISTS big_amount (`amount` BIGINT UNSIGNED NOT NULL);
Query OK, 0 rows affected (0.02 sec)

mysql> INSERT INTO big_amount VALUES (POW(2,48));
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM big_amount;
+-----------------+
| amount          |
+-----------------+
| 281474976710656 |
+-----------------+
1 row in set (0.00 sec)

-- マイナスの値としてselectする
mysql> SELECT -amount as minus_amount FROM big_amount;
+------------------+
| minus_amount     |
+------------------+
| -281474976710656 |
+------------------+
1 row in set (0.00 sec)
