CREATE DATABASE IF NOT EXISTS codeup_test_db;
USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  artist VARCHAR(255) NOT NULL,
  name VARCHAR(255) NOT NULL,
  release_date INT UNSIGNED NOT NULL,
  sales FLOAT,
  genre VARCHAR(255)
  -- PRIMARY KEY(id) -- instead, we'll add it to the column definition
);

DESCRIBE albums;




-- id — auto incrementing unsigned integer primary key
-- artist — string for storing the recording artist name
-- name — string for storing a record name
-- release_date — integer representing year record was released
-- sales — floating point value for number of records sold (in millions)
-- genre — string for storing the record's genre(s)


-- CREATE DATABASE IF NOT EXISTS drinks_db;
-- CREATE DATABASE IF NOT EXISTS codeup_test_db;

-- USE drinks_db;
-- USE codeup_test_db;


-- DROP TABLE IF EXISTS drinks;
-- DROP TABLE IF EXISTS albums;

-- CREATE TABLE albums(
-- id INT UNSIGNED NOT NULL AUTO_INCREMENT,
-- artist TEXT,
-- name TEXT,
-- release_date DATE,
-- sales DECIMAL(11, 2),
-- genre TEXT,
-- PRIMARY KEY(id)
-- );
--
-- DESCRIBE albums;


-- Create an albums table with the following columns:
-- CREATE TABLE albums (
-- -- id — auto incrementing unsigned integer primary key
-- id INT UNSIGNED NOT NULL AUTO_INCREMENT,
-- -- artist — string for storing the recording artist name
-- artist_name VARCHAR(200) NOT NULL,
-- -- name — string for storing a record name
-- record_name VARCHAR(300) NOT NULL,
-- -- release_date — integer representing year record was released
-- release_date DATE NOT NULL,
-- -- sales — floating point value for number of records sold (in millions)
-- sales DECIMAL(10, 2) NOT NULL,
-- -- genre — string for storing the record's genre(s)
-- genre VARCHAR(50) NOT NULL,
-- PRIMARY KEY (id)
-- );

-- CREATE TABLE albums(
-- id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, --primary key can go here
-- artist VARCHAR(255) NOT NULL,
-- name VARCHAR(255) NOT NULL,
-- release_date DATE, --INT UNSIGNED NOT NULL
-- genre VARCHAR(255) NOT NULL,
-- sales DECIMAL(11, 2), --FLOAT
-- PRIMARY KEY(id)
-- );
--
-- DESCRIBE albums;


-- CREATE TABLE drinks(
-- id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
-- abv DOUBLE NOT NULL,
-- name VARCHAR(255) NOT NULL,
-- glass_type VARCHAR(255),
-- price DOUBLE NOT NULL,
-- volume_in_oz INT UNSINGED NOT NULL
-- );
--
--
-- INSERT INTO drinks(name .abv, volume_in_oz, price)
-- VALUES('margarita', 0.4, 2, 16.99),
--       ('jack and coke', 0.4, 2, 9.99),
--       ('jager bomb', 0.35, 1,  8.99),
--       ('jack and coke', 0.4, 2, 9.99),
--       ('jager bomb', 0.35, 1,  8.99),
--       ('shiner', 0.05, 20, 4.99),
--       ('jager bomb', 0.35, 1,  8.99),
--       ('four loco', 0.12, 24, 2.99);
--
--
-- SELECT * FROM drinks;
--
-- SELECT AVG(price) FROM drinks
--
-- SELECT
-- name,
-- abv * volume_in_oz / (1.5 * 0.4) AS standard_drinks
-- FROM drinks;
