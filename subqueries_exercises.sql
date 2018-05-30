SELECT concat(first_name, ' ', last_name) AS 'Employees'
FROM employees
WHERE hire_date IN (
  SELECT hire_date
  FROM employees
  WHERE emp_no = 101010
);

SELECT
  title
FROM titles
WHERE emp_no IN (
  SELECT emp_no
  from employees
  WHERE first_name = 'aamod'
);

SELECT concat(first_name, ' ',last_name) AS 'Manager Name'
FROM employees
WHERE emp_no IN (
  SELECT emp_no
  FROM dept_manager
  WHERE gender = 'f' AND to_date > now()
);

SELECT
  dept_name AS 'Department'
FROM departments
  WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE to_date > now() AND emp_no  IN (
      SELECT emp_no
      FROM employees
      WHERE gender = 'f')
);

SELECT
first_name, last_name
FROM employees
WHERE emp_no IN (
  SELECT emp_no
  FROM salaries
  where salary IN (
    SELECT max(salary)
    FROM salaries
  )
);
