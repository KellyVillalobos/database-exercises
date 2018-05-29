--DEPARTMENT AND CURRENT MANAGER

SELECT
  dept_name                                              AS 'Department Name',
  concat(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM employees.departments AS d
  JOIN employees.dept_manager AS dm ON dm.dept_no = d.dept_no
  JOIN employees.employees ON employees.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01'
ORDER BY dept_name;

--DEPARTMENTS CURRENTLY MANAGED BY WOMEN

SELECT
  dept_name                                              AS 'Department Name',
  concat(employees.first_name, ' ', employees.last_name) AS 'Manager Name'
FROM employees.departments AS d
  JOIN employees.dept_manager AS dm ON d.dept_no = dm.dept_no
  JOIN employees.employees ON dm.emp_no = employees.emp_no
WHERE employees.gender = 'F' AND dm.to_date = '9999-01-01'
ORDER BY dept_name;

--TITLES OF EMPLOYEES CURRENTLY WORKING IN CUSTOMER SERVICE

SELECT
  title    AS 'Title',
  count(t.emp_no) AS 'Count'
FROM employees.titles AS t
  JOIN employees.dept_emp AS de ON t.emp_no = de.emp_no
  JOIN employees.departments AS d2 ON de.dept_no = d2.dept_no
WHERE dept_name = 'Customer Service' and de.to_date = '9999-01-01' AND t.to_date = '9999-01-01'
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
  CONCAT(e.first_name, ' ', e.last_name)   AS 'Employee Name',
  d.dept_name                              AS 'Department Name',
  CONCAT(e2.first_name, ' ', e2.last_name) AS 'Manager'
FROM employees.employees AS e
  JOIN employees.dept_emp AS de ON e.emp_no = de.emp_no
  JOIN employees.departments AS d ON de.dept_no = d.dept_no
  JOIN employees.dept_manager AS dm ON d.dept_no = dm.dept_no
  JOIN employees.employees AS e2 ON dm.emp_no = e2.emp_no
WHERE de.to_date = '9999-01-01' AND dm.to_date = '9999-01-01'
ORDER BY dept_name
LIMIT 20;

--SLACK BONUS

--AVERAGE SALARIES FOR MALE AND FEMALE

SELECT
  avg(salary) AS 'Average Salary',
  e.gender    AS 'Gender'
FROM employees.employees AS e
  JOIN employees.salaries AS average ON e.emp_no = average.emp_no
WHERE average.to_date = '9999-01-01'
GROUP BY e.gender;

--HISTORICAL SALARY AVERAGES FOR MALE AND FEMALE

SELECT
  avg(salary) AS 'Average Salary',
  e.gender    AS 'Gender'
FROM employees.employees AS e
  JOIN employees.salaries AS average ON e.emp_no = average.emp_no
GROUP BY e.gender;

-- CURRENT AVERAGE SALARIES OF MANAGERS BY GENDER
SELECT
  avg(salary.emp_no)      AS 'Department Manager',
  e.gender                  AS 'Gender'
FROM employees.employees AS e
  JOIN employees.dept_manager AS dm ON e.emp_no = dm.emp_no
  JOIN employees.salaries as salary ON e.emp_no = salary.emp_no
  WHERE dm.to_date = '9999-01-01'
GROUP BY e.gender;

--HISTORIC AVERAGE SALARY OF ALL MANAGERS BY GENDER

SELECT
  avg(salary.emp_no)      AS 'Department Manager',
  e.gender                  AS 'Gender'
FROM employees.employees AS e
  JOIN employees.dept_manager AS dm ON e.emp_no = dm.emp_no
  JOIN employees.salaries as salary ON e.emp_no = salary.emp_no
GROUP BY e.gender;


