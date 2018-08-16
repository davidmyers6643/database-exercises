# SELECT first_name, last_name, birth_date
# FROM employees AS e
# WHERE emp_no IN (SELECT emp_no FROM dept_manager);
#
# SELECT first_name, last_name
# FROM employees
# WHERE emp_no IN (
#   SELECT emp_no
#   FROM titles
# WHERE title LIKE '%engineer%');

# Find all the employees with the same hire date as employee 101010 using a sub-query.

SELECT CONCAT(e.first_name, ' ', e.last_name)
FROM employees AS e
WHERE hire_date IN (SELECT hire_date FROM employees
WHERE emp_no = '101010');

# Find all the titles held by all employees with the first name Aamod

SELECT title
FROM titles
WHERE emp_no IN (SELECT emp_no FROM employees
WHERE first_name = 'Aamod');
# GROUP BY title;