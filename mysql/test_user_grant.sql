set names utf8mb4;

-- SELECT, INSERTしか出来ないユーザーを作成
CREATE USER sample_db_web@localhost IDENTIFIED BY 'sample_user';

GRANT SELECT, INSERT ON sample_db.* TO sample_db_web@localhost;

-- SELECT出来る
SELECT * FROM sample_table;

-- INSERT出来る
INSERT INTO sample_table(sample_id, sample_name, created) VALUES
(100, 'test_name', now());

-- UPDATE, DELETE出来ない
UPDATE sample_table
   SET sample_name = 'update_name'
 WHERE sample_id = 100;

DELETE FROM sample_table
 WHERE sample_id = 100;
