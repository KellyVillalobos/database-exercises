USE employees;


SELECT CONCAT_WS(' ', first_name, last_name)
FROM employees
WHERE first_name LIKE 'e%e'
      AND last_name LIKE 'e%e';

SELECT concat_ws(' ', datediff(now(), hire_date), 'days') AS 'Days of service'
FROM employees
WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25'
ORDER BY birth_date ASC , hire_date DESC
LIMIT 5 OFFSET 45;





