-- SELECT * FROM employees
-- WHERE hire_date LIKE '199%'
-- AND birth_date LIKE '%12-25'
-- ORDER BY birth_date, hire_date DESC;
--
-- SELECT * FROM employees
-- WHERE last_name NOT LIKE '%qu%'
-- OR last_name LIKE '%q%';
--
--
-- SELECT * FROM employees
-- ORDER BY emp_no DESC;
--
--
-- SELECT first_name, last_name
-- FROM employees
-- ORDER BY last_name DESC;
--
--
-- SELECT first_name, last_name
-- FROM employees
-- ORDER BY first_name, last_name;
--
-- SELECT first_name, last_name
-- FROM employees
-- ORDER BY first_name, last_name DESC;
--
-- SELECT * FROM employees
-- ORDER BY hire_date, gender DESC;
--
-- SELECT * FROM salaries
-- ORDER BY to_date DESC, salary DESC;


-- Update your queries for employees whose names start and end with 'E'.
-- Use concat() to combine their first and last name together as a single
-- column in your results.

SELECT CONCAT(first_name, last_name) FROM employees
WHERE first_name LIKE 'E%'
AND last_name LIKE '%E';

-- For your query of employees born on Christmas and hired in the 90s, use datediff()
--  to find how many days they have been working at the company (Hint: You will also
--  need to use now() or curdate())

SELECT first_name, last_name, (DATEDIFF(now(), hire_date) / 365) AS days
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%12-25'
ORDER BY days DESC;


SELECT last_name, first_name
FROM employees
GROUP BY last_name, first_name;
