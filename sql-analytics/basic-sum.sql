-- basic sum aggregation function.
-- find the total amount of money spent on all the employees in the database.

SELECT SUM(salary) AS total_cost
FROM employees e;

-- what about those who are L1 employees?

SELECT SUM(salary) AS _l1cost
FROM employees e
WHERE pay_type = 'L1';

-- L2?

SELECT SUM(salary) AS _l2cost
FROM employees e
WHERE pay_type = 'L2';

-- how about l3?

SELECT SUM(salary) AS _l3cost
FROM employees e
WHERE pay_type = 'L3';

-- how about employees who are part of dept id #214?

WITH new_table AS ( -- create a CTE table to reference in the next query 
  SELECT e.employ_id, e.employ_name, e.dept, d.dept_id, e.salary
  FROM employees e
  JOIN departments d ON e.dept = d.dept -- put the departments table with the employees table so we can find the department ids
)

SELECT *
FROM new_table
WHERE dept_id = 214; -- put the departments table with the employees table so we can find the department ids

-- we could also use an easier query to find this, but i wanted to show off.

SELECT e.employ_id, e.employ_name, e.dept, d.dept_id, e.salary
FROM employees e
JOIN departments d ON e.dept = d.dept
WHERE dept_id = 214;
