-- USE employees;


-- SELECT CONCAT(emp_no, last_name, ', ', first_name) AS 'full_name',birth_date AS DOB
-- FROM employees
-- LIMIT 10;
--


# indexes ecersise

-- USE employees;

SELECT emp_no FROM employees;

DESCRIBE employees;



USE codeup_test_db;

SELECT * FROM albums

DESCRIBE albums;

SHOW CREATE TABLE albums;

ALTER TABLE albums
  ADD UNIQUE (artist, name);

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('AC/DC', 'BACK in Black', 1980, 'Hard rock', 26.10);


DESCRIBE albums;
