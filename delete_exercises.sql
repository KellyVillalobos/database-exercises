USE codeup_test_db;


SELECT album_title AS 'Albums who''s release date is after 1991' FROM albums WHERE release_date >= 1991;
SELECT album_title AS 'Albums who''s genre is Disco' FROM albums WHERE genre LIKE '%disco%';
SELECT album_title AS 'Albums with Whitney Houston' FROM albums WHERE artist_first_name LIKE '%whitney houston%';

DELETE FROM albums WHERE release_date >= 1991;
DELETE FROM albums WHERE genre LIKE '%disco%';
DELETE FROM albums WHERE artist_first_name LIKE '%whitney houston%';

