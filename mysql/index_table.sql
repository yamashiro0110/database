
CREATE TABLE `sample_index_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(768) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `i_text` (`text`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
;

/*
mysql 5.7のmax key lengthが3072byteのため、
charset=utf8mb4でvarcharのカラムにindexを貼る場合は、
sizeは768まで指定できる。

mysql> select version();
+-----------+
| version() |
+-----------+
| 5.7.17    |
+-----------+
1 row in set (0.00 sec)
*/
