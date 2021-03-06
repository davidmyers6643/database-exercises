USE employees;

SELECT * FROM employees
WHERE (first_name = 'Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya')
AND gender = 'M';

# Update the query to order by first name and then last name.
# The first result should now be Irena Acton and the last should be Vidya Zweizig.


SELECT first_name, last_name FROM employees
WHERE (first_name = 'Irena'
OR first_name = 'Vidya'
OR first_name  = 'Maya')
AND gender = 'M'
ORDER BY first_name , last_name ASC;

# Change the order by clause so that you order by last name before first name.
# Your first result should still be Irena Acton but now the last result should be Maya Zyda.

SELECT first_name, last_name FROM employees
WHERE (first_name = 'Irena'
       OR first_name = 'Vidya'
       OR first_name  = 'Maya')
      AND gender = 'M'
ORDER BY last_name , first_name;


# Update your queries for employees with 'E' in their last name to sort the results by their employee number.
# Your results should not change!

SELECT * FROM employees
WHERE last_name LIKE 'E%'
OR last_name LIKE '%E'
ORDER BY emp_no;

SELECT * FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E'
ORDER BY emp_no;

# Now reverse the sort order for both queries


# Change the query for employees hired in the 90s and born on Christmas such
# that the first result is the oldest employee who was hired last. It should
# be Khun Bernini.

SELECT * FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date DESC;

SELECT * FROM employees
WHERE last_name NOT LIKE '%qu%'
OR last_name LIKE '%q%';


SELECT * FROM employees
ORDER BY emp_no DESC;


SELECT first_name, last_name
FROM employees
ORDER BY last_name DESC;


SELECT first_name, last_name
FROM employees
ORDER BY first_name, last_name;

SELECT first_name, last_name
FROM employees
ORDER BY first_name, last_name DESC;

SELECT * FROM employees
ORDER BY hire_date, gender DESC;

SELECT * FROM salaries
ORDER BY to_date DESC, salary DESC;
