
USE codeup_test_db;

SELECT * FROM albums WHERE release_date < 1980;

SELECT 'The name of all albums by Pink Floyd' AS 'Exercise 1';
SELECT * FROM albums WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'Exercise 2';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';


SELECT 'The genre for Nevermind' AS 'EXERCISE 3';
SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT 'Which albums were released in the 1990s' AS 'Exercise 4'
SELECT  * FROM albums WHERE release_date BETWEEN 1990 > 1999;



SELECT sales FROM albums WHERE sales > 2.0;

SELECT * FROM albums WHERE genre = 'rock';


SELECT name FROM albums
WHERE genre LIKE '%rock%';





-- USE codeup_test_db;
--
-- -- The name of all albums by Pink Floyd.
-- SELECT 'The name of all albums by Pink Floyd' AS 'Exercise 1';
--
-- SELECT name FROM albums
-- WHERE artist = 'Pink Floyd';
--
--
-- -- The year Sgt. Pepper's Lonely Hearts Club Band was released
-- SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released'
-- AS 'Exercise 2';
--
-- SELECT release_date FROM albums
-- WHERE name = "Sgt. Pepper's Lonely Hearts Club Band";
--
--
-- -- The genre for Nevermind
--
-- SELECT 'The genre for Nevermind' AS 'Exercise 3';
--
-- SELECT genre FROM albums
-- WHERE name = "Nevermind";
--
--
-- -- Which albums were released in the 1990s
--
-- SELECT 'Which albums were released in the 1990s' AS 'Exercise 4';
--
-- SELECT name FROM albums
-- WHERE release_date BETWEEN 1990 AND 1999;
--
--
-- -- Which albums had less than 20 million certified sales
--
-- SELECT 'Which albums had less than 20 million certified sales' AS 'Exercise 5';
-- SELECT name FROM albums
-- WHERE sales < 20;
--
--
-- -- All the albums in the rock genre. Is this all the rock albums in the table?
--
-- SELECT 'All the albums in the rock genre. Is this all the rock albums in the table?' AS 'Exercise 6';
--
-- SELECT name FROM albums
-- WHERE genre = 'Rock';
--
--
--
--
--
--
-- SELECT name FROM albums
-- WHERE genre LIKE '%rock%';







-- The name of all albums by Pink Floyd.
-- The year Sgt. Pepper's Lonely Hearts Club Band was released
-- The genre for Nevermind
-- Which albums were released in the 1990s
-- Which albums had less than 20 million certified sales
-- All the albums with a genre of "Rock". Why do these query results
--  not include albums with a genre of "Hard rock" or "Progressive rock"?
