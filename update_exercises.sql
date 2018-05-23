USE codeup_test_db;

select album_title as 'all the albums' from albums;
update albums set album_sales = album_sales * 10;
select album_title from albums where album_sales > 100.00
select album_title as 'all albums released before 1980' from albums where release_date < 1980;
update albums set release_date = 1800 WHERE relase_date <=1980;
select album_title from albums where release_date <= 1800;
select album_title as 'All albums by Michael Jackson' from albums where artist_first_name = 'michael jackson';
update albums set artist_first_name = 'Peter Jackson' where artist_first_name = 'michael jackson';
select album_title FROM albums WHERE artist_first_name = 'Peter Jackson';

