CREATE TABLE `shop_items` (
    `item_id` BIGINT NOT NULL AUTO_INCREMENT,
    `item_name` VARCHAR(30) NOT NULL,
    `item_price` INT UNSIGNED NOT NULL,
    `start_date` DATETIME NOT NULL,
    PRIMARY KEY(item_id)
);
