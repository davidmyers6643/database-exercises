-- CREATE TABLE roles (
--   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
--   name VARCHAR(100) NOT NULL,
--   PRIMARY KEY (id)
-- );
--
-- CREATE TABLE users (
--   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
--   name VARCHAR(100) NOT NULL,
--   email VARCHAR(100) NOT NULL,
--   role_id INT UNSIGNED DEFAULT NULL,
--   PRIMARY KEY (id),
--   FOREIGN KEY (role_id) REFERENCES roles (id)
-- );
--
-- INSERT INTO roles (name) VALUES ('admin');
-- INSERT INTO roles (name) VALUES ('author');
-- INSERT INTO roles (name) VALUES ('reviewer');
-- INSERT INTO roles (name) VALUES ('commenter');
--
-- INSERT INTO users (name, email, role_id) VALUES
-- ('bob', 'bob@example.com', 1),
-- ('joe', 'joe@example.com', 2),
-- ('sally', 'sally@example.com', 3),
-- ('adam', 'adam@example.com', 3),
-- ('jane', 'jane@example.com', null),
-- ('mike', 'mike@example.com', null);
--
-- SELECT * FROM roles;
-- SELECT * FROM users;
--
-- SELECT users.name, roles.name
-- FROM users
-- INNER JOIN roles
-- ON roles.id = users.role_id;
--
-- SELECT users
--
--
-- SELECT users.name, roles.name
-- FROM users
-- LEFT JOIN roles
-- ON roles.id = users.role_id;


-- SELECT users.name, roles.name
-- FROM users
--  RIGHT JOIN roles
--   ON roles.id = users.role_id;
--
-- SELECT * FROM employees LIMIT 2;
-- SELECT * FROM titles LIMIT 2;
--
-- SELECT CONCAT (employees.first_name, ' ', employees.last_name, ' is a ', titles.title)
-- FROM  employees
-- JOIN titles
-- ON titles.emp_no = employees.emp_no
-- WHERE titles.to_date > NOW();
--
-- USE employees;
-- SHOW TABLES;
--
-- SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
-- FROM employees AS e
--
-- JOIN dept_emp AS de
-- ON de.emp_no = e.emp_no
--
-- JOIN departments AS d
-- ON d.dept_no = de.dept_no
--
-- WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;
--
-- SELECT * FROM employees;
-- SELECT * dept_emp;
-- SELECT * FROM depatments;

--   Department Name    | Department Manager
--  --------------------+--------------------
--   Customer Service   | Yuchang Weedman
--   Development        | Leon DasSarma
--   Finance            | Isamu Legleitner
--   Human Resources    | Karsten Sigstam
--   Marketing          | Vishwani Minakawa
--   Production         | Oscar Ghazalie
--   Quality Management | Dung Pesch
--   Research           | Hilary Kambil
--   Sales              | Hauke Zhang
USE employees;

-- #2 write a query that shows each department along with
--    the name of the current manager for that department.

SELECT d.dept_name, CONCAT(e.first_name,' ', e.last_name) AS full_name
FROM employees AS e

JOIN dept_manager AS dm
ON dm.emp_no = e.emp_no

JOIN departments AS d
ON d.dept_no = dm.dept_no

WHERE dm.to_date > NOW() ORDER BY dept_name;


--  #3  Find the name of all departments currently managed by women


SELECT d.dept_name, CONCAT(e.first_name,' ', e.last_name) AS full_name
FROM employees AS e

JOIN dept_manager AS dm
ON dm.emp_no = e.emp_no

JOIN departments AS d
ON d.dept_no = dm.dept_no

WHERE dm.to_date > NOW() AND gender = 'F' ORDER BY dept_name;

-- #4 Find the current titles of employees currently working in the Customer Service
--    department.
-- Title              | Count
-- -------------------+------
-- Assistant Engineer |    68
-- Engineer           |   627
-- Manager            |     1
-- Senior Engineer    |  1790
-- Senior Staff       | 11268
-- Staff              |  3574
-- Technique Leader   |   241

SELECT t.title AS 'Title', COUNT(t.title) AS 'COUNT'
FROM titles AS t

JOIN dept_emp AS de
ON de.emp_no = t.emp_no

WHERE de.dept_no = 'd009'
  AND t.to_date > NOW()
  AND de.to_date > NOW()
GROUP BY t.title;

DESCRIBE salaries;
-- #5  Find the current salary of all current managers.
SELECT d.dept_name AS dn,
CONCAT(e.first_name,' ', e.last_name)

FROM employees AS e

JOIN dept_manager AS mgr
ON e.emp_no = mgr.emp_no

JOIN departments AS d
ON mgr.dept_no = d.dept_no

JOIN salaries AS s
ON e.emp_no = s.emp_no

WHERE mgr.to_date > NOW()
AND s.to_date > NOW()
ORDER by d.dept_name
;


SELECT
d.dept_name,
mortals.first_name,
mortals.last_name,
mgmt.first_name,
mgmt.last_name


FROM employees AS mortals
  JOIN dept_emp AS de ON mortals.emp_no = de.emp_no
  JOIN departments AS d ON de.emp_no = d.dept_no
  JOIN dept_manager AS manager ON d.dept_no = manager.dept_no
  JOIN employees mgmt ON manager.emp_no = mgmt.emp_no
WHERE de.to_date > curdate()
      AND manager.to_date > curdate()
ORDER BY d.dept_name;













