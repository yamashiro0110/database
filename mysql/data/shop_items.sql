DELETE FROM shop_items;

INSERT INTO shop_items(item_name, item_price, start_date) VALUES
('item_1', 100, '2016-12-01 00:00:00'),
('item_1', 120, '2016-12-10 10:00:00'),
('item_1', 150, '2016-12-30 12:00:00'),
('item_1', 150, '2020-01-01 00:00:00');

-- 開始時刻が現在時刻より古い
SELECT *
  FROM shop_items
 WHERE start_date <= now();

-- 開始時刻が現在時刻より古い、かつ最も新しい
SELECT *
  FROM shop_items
 WHERE start_date <= now()
 ORDER BY start_date DESC
 LIMIT 1;
