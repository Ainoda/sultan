CREATE TABLE machines (
	`id` INTEGER PRIMARY KEY,
    `created_at` DATETIME DEFAULT (datetime('now', 'localtime')),
    `updated_at` DATETIME DEFAULT (datetime('now', 'localtime')),
    `deleted_at` DATETIME NULL,
    `name` VARCHAR(64) NOT NULL DEFAULT ''
);
-- separator
CREATE TABLE solds (
	`id` INTEGER PRIMARY KEY,
    `created_at` DATETIME DEFAULT (datetime('now', 'localtime')),
    `number` VARCHAR(64) NOT NULL DEFAULT '',
    `user_id` INT NOT NULL,
    `machine_id` INT NOT NULL,
    `subtotal` DECIMAL(15, 2) NOT NULL DEFAULT 0,
    `payment_type` TINYINT NOT NULL DEFAULT 0,
    `bank_id` INT NOT NULL DEFAULT 0,
    `card_number` VARCHAR(16) NULL,
    `card_type` TINYINT NOT NULL DEFAULT 0,
    `payment` DECIMAL(15, 2) NOT NULL DEFAULT 0,
    `reward` INT NOT NULL DEFAULT 0,
    `customer_id` INT NOT NULL DEFAULT 0,
    `additional_charge` DECIMAL(15, 2) NOT NULL DEFAULT 0,
    `total` DECIMAL(15, 2) NOT NULL DEFAULT 0
);
-- separator
CREATE TABLE solditems (
	`id` INTEGER PRIMARY KEY,
    `created_at` DATETIME DEFAULT (datetime('now', 'localtime')),
	`barcode` VARCHAR(64) NOT NULL,
	`name` VARCHAR(255) NOT NULL DEFAULT '',
	`sold_id` INT NOT NULL,
	`count` FLOAT NOT NULL,
	`price` DECIMAL(15, 2) NOT NULL,
	`total` DECIMAL(15, 2) NOT NULL,
    `discount_formula` VARCHAR(255) NOT NULL DEFAULT '',
    `discount` DECIMAL(15, 2) NOT NULL DEFAULT 0,
    `final` DECIMAL(15, 2) NOT NULL,
    `buy_price` DECIMAL(15, 2) NOT NULL,
    `flag` SMALLINT NOT NULL DEFAULT 0,
    `link_id` INT NOT NULL DEFAULT 0
);
-- separator
CREATE INDEX SOLDITEM ON solditems (barcode);
-- separator
INSERT INTO machines(name) VALUES ('Cashier 1');
