DROP TABLE `shop_items`;

CREATE TABLE `shop_items` (
    `item_id` BIGINT NOT NULL AUTO_INCREMENT,
    `item_name` VARCHAR(30) NOT NULL,
    `item_price` INT UNSIGNED NOT NULL,
    `start_date` DATETIME NOT NULL,
    PRIMARY KEY(item_id)
);

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
