USE employees;

SELECT *
FROM employees
WHERE (first_name = 'Irena'
       OR first_name = 'vidya'
       OR first_name = 'maya') AND gender = 'm'
ORDER BY last_name ASC, first_name  ;

SELECT *
FROM employees
WHERE last_name LIKE '%e';

SELECT *
FROM employees
WHERE last_name LIKE 'e%e';

SELECT *
FROM employees
WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25'
ORDER BY birth_date ASC , hire_date DESC
LIMIT 5 OFFSET 45;

SELECT *
FROM employees
WHERE birth_date LIKE '%-12-25';

SELECT *
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';