USE codeup_test_db;

SELECT album_title from albums WHERE artist_first_name = 'pink floyd';
SELECT release_date from albums where album_title = 'Sgt. Peppers''s Lonely Hearts Club Band';
SELECT genre from albums where album_title = 'nevermind';
select album_title from albums where release_date between 1990 and 1999;
select album_title from albums where album_sales < 20.00;
select * from albums where genre = 'rock';