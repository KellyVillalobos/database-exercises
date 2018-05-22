USE codeup_test_db;

DROP TABLE IF EXISTS pizza;

CREATE TABLE pizza(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
order_name VARCHAR (100),
phone_number int(10),
email VARCHAR (100),
address VARCHAR (100),
pizza_size CHAR (2),
total_cost DECIMAL (4,2),
description VARCHAR (100),
isDelivered TINYINT,
created_at TIMESTAMP,
updated_at TIMESTAMP NULL DEFAULT NULL,
PRIMARY KEY (id)

);