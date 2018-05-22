USE  codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
artist_first_name VARCHAR (100) NOT NULL,
album_title VARCHAR (100),
release_date INT,
album_sales DECIMAL(5,2),
genre VARCHAR (100),
PRIMARY KEY(id)
);