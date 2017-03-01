-- https://dev.mysql.com/doc/refman/5.6/ja/innodb-fulltext-index.html

DROP TABLE IF EXISTS full_text_index_table;
CREATE TABLE full_text_index_table (
  id BIGINT NOT NULL PRIMARY KEY,
  title TEXT NOT NULL,
  FULLTEXT title_index(title)
);

INSERT INTO full_text_index_table(id, title) VALUES
(1, 'テキストベースのカラム (CHAR、VARCHAR、または TEXT カラム) 上に作成されたインデックスのタイプです。'),
(2, 'これを使用すると、ストップワードとして定義されている任意の単語が省略されることで、これらのカラム内に含まれるデータ上での InnoDB のクエリーおよび DML 操作の速度を上げる際に役立ちます。'),
(3, 'FULLTEXT インデックスは、CREATE TABLE ステートメントの一部として定義することも、あとで ALTER TABLE または CREATE INDEX を使用して追加することもできます。'),
(4, 'FULLTEXT インデックス は、CREATE TABLE ステートメントの一部として定義することも、あとで ALTER TABLE または CREATE INDEX を使用して追加することもできます。');

-- スペース区切りでinsertしないと特定の単語にヒットしない
SELECT * FROM full_text_index_table WHERE MATCH(title) AGAINST('InnoDB') \G
SELECT * FROM full_text_index_table WHERE MATCH(title) AGAINST('InnoDB' IN NATURAL LANGUAGE MODE) \G

SELECT * FROM full_text_index_table WHERE MATCH(title) AGAINST('インデックス') \G
SELECT * FROM full_text_index_table WHERE MATCH(title) AGAINST('インデックス' IN NATURAL LANGUAGE MODE) \G
SELECT * FROM full_text_index_table WHERE MATCH(title) AGAINST('+インデックス' IN BOOLEAN MODE) \G
