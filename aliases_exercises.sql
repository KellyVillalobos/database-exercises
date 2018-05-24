SELECT concat(last_name, ' ', first_name) AS full_name
from employees
ORDER BY full_name
LIMIT 10;

SELECT concat(last_name, ' ', first_name) AS full_name, birth_date as dob
from employees
ORDER BY full_name
LIMIT 10;

SELECT  concat(emp_no, ' - ',last_name, ' , ', first_name) AS full_name, birth_date AS dob
from employees
ORDER BY full_name
LIMIT 10;