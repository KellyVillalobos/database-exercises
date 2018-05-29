--DEPARTMENT AND CURRENT MANAGER

SELECT
  dept_name                                              AS 'Department Name',
  concat(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM employees.departments AS d
  JOIN employees.dept_manager AS dm ON dm.dept_no = d.dept_no
  JOIN employees.employees ON employees.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01';

--DEPARTMENTS CURRENTLY MANAGED BY WOMEN

SELECT
  dept_name                                              AS 'Department Name',
  concat(employees.first_name, ' ', employees.last_name) AS 'Manager Name'
FROM employees.departments AS d
  JOIN employees.dept_manager AS dm ON d.dept_no = dm.dept_no
  JOIN employees.employees ON dm.emp_no = employees.emp_no
WHERE employees.gender = 'F' AND dm.to_date = '9999-01-01';

--TITLES OF EMPLOYEES CURRENTLY WORKING IN CUSTOMER SERVICE

SELECT
  title    AS 'Title',
  count(*) AS 'Count'
FROM employees.titles AS t
  JOIN employees.dept_emp AS de ON t.emp_no = de.emp_no
  JOIN employees.departments AS d2 ON de.dept_no = d2.dept_no
WHERE dept_name = 'Customer Service' AND t.to_date = '9999-01-01'
GROUP BY title;

--CURRENT SALARY OF ALL CURRENT MANAGERS


SELECT
  dept_name                                              AS 'Department Name',
  concat(employees.first_name, ' ', employees.last_name) AS 'Department Manager',
  employees.salaries.salary                              AS 'Salary'
FROM employees.departments AS d
  JOIN employees.dept_manager AS dm ON dm.dept_no = d.dept_no
  JOIN employees.employees ON employees.emp_no = dm.emp_no
  JOIN employees.salaries ON employees.emp_no = salaries.emp_no

WHERE dm.to_date = '9999-01-01' AND employees.salaries.to_date = '9999-01-01';

--BONUS

SELECT
  CONCAT(e.first_name, ' ', e.last_name) AS 'Employee Name',
  d.dept_name                            AS 'Department Name'
FROM employees.employees AS e
  JOIN employees.dept_emp AS de ON e.emp_no = de.emp_no
  JOIN employees.departments AS d ON de.dept_no = d.dept_no
WHERE de.to_date = '9999-01-01';




SELECT concat(e.first_name, ' ', e.last_name) AS 'Manager Name',
  dept_name AS 'Department Name'
FROM employees.employees AS e
  JOIN employees.dept_manager AS dm ON e.emp_no = dm.emp_no
  join employees.departments as d on dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01';




SELECT
  CONCAT(e.first_name, ' ', e.last_name) AS 'Employee Name',
  d.dept_name                            AS 'Department Name',
  CONCAT(e2.first_name, ' ',e2.last_name) AS 'Manager'
FROM employees.employees AS e
  JOIN employees.dept_emp AS de ON e.emp_no = de.emp_no
  JOIN employees.departments AS d ON de.dept_no = d.dept_no
  JOIN employees.dept_manager AS dm ON d.dept_no = dm.dept_no
  JOIN employees.employees AS e2 ON dm.emp_no = e2.emp_no
WHERE de.to_date = '9999-01-01' AND dm.to_date = '9999-01-01';







-- SELECT
--   e.emp_no,
--   CONCAT(e.first_name, ' ', e.last_name) AS full_name,
--   d.dept_name AS 'department name',
-- concat(first_name,' ',last_name) AS 'department manager'
-- FROM employees AS e
--   JOIN dept_emp AS de
--     ON de.emp_no = e.emp_no
--   JOIN departments AS d
--     ON d.dept_no = de.dept_no
--   JOIN dept_manager AS dm
--   ON dm.dept_no = de.dept_no
-- WHERE de.to_date = '9999-01-01';


DESCRIBE                              departments;

Describe dept_manager;

describe dept_emp;

DESCRIBE titles;

describe dept_manager;

SELECT *
FROM employees.dept_emp
WHERE employees.dept_emp.to_date = '9999-01-01';

SELECT title
FROM employees.titles
WHERE title = 'senior staff' AND titles.to_date = '9999-01-01';


SELECT emp_no
FROM employees.dept_manager
WHERE emp_no = '110022';
