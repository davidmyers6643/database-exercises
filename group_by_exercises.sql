USE employees;

SELECT * FROM employees LIMIT 10;

SELECT * FROM employees
WHERE birth_date LIKE '%-05-16';

SELECT COUNT(birth_date) AS 'favPeople'
FROM employees
WHERE birth_date = '1961-05-16'
OR birth_date = '1958-05-16'
GROUP BY birth_date;

SELECT birth_date, COUNT(birth_date) AS 'favPeople', first_name
FROM employees
WHERE birth_date = '1961-05-11'
OR birth_date = '1958-05-11'
GROUP BY birth_date, first_name
ORDER BY favPeople DESC;

SELECT * FROM employees WHERE birth_date = '1958-05-16';


SELECT COUNT(*) FROM employees WHERE birth_date = '1958-05-16';

SELECT COUNT(*) FROM employees WHERE birth_date = '1961-05-16';

SELECT first_name, last_name
FROM employees WHERE birth_date = '1958-05-03'
ORDER BY first_name;

SELECT * FROM employees
WHERE first_name = 'Kokou' AND gender = 'M';

SELECT COUNT(first_name), gender
FROM employees
WHERE first_name = 'Kokou'
GROUP BY gender = 'M';

SELECT * FROM employees
WHERE first_name = 'Kokou' and gender = 'F';

SELECT * FROM songs WHERE month_fy BETWEEN 5 AND 8
GROUP BY genre
ORDER BY plays
DESC LIMIT 10;

SELECT CONCAT_ws(', ', first_name, last_name, emp_no, hire_date) AS myRes
FROM employees AS emp
WHERE emp.emp_no > 20000;

-- In your script, use DISTINCT to find the
-- unique titles in the titles table.

SELECT DISTINCT title FROM titles;

-- Find your query for employees whose last names start
-- and end with 'E'. Update the query find just the unique
-- last names that start and end with 'E' using GROUP BY.

SELECT DISTINCT last_name FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E';

# 'e%e'

-- Update your previous query to now find unique combinations
--  of first and last name where the last name starts and ends
--  with 'E'. You should get 846 rows.

SELECT DISTINCT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E';

-- Find the unique last names with a 'q' but not 'qu'.

SELECT DISTINCT last_name
From employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';


SELECT last_name
From employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
  GROUP BY last_name;

-- Add a COUNT() to your results and use ORDER BY to make it easier
-- to find employees whose unusual name is shared with others.

SELECT last_name, COUNT(last_name)
From employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
# AND last_name LIKE last_name
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;


-- Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and
-- GROUP BY to find the number of employees for each gender with those names.


SELECT COUNT(*), gender FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender
ORDER BY COUNT(*) DESC;