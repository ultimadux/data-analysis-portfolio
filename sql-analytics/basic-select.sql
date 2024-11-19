-- refer to the database created in the database-admin folder

SELECT * FROM employees e -- show all columns from employees

-- in the event that I want to order the values returned, I should use ORDER BY.

SELECT * FROM employees e
ORDER BY salary ASC; -- order the table from lowest to highest vertically

-- it is also important to note that multiple queries can be called at once (at least in SSMS and Azure)

SELECT * FROM employees e
ORDER BY salary ASC;

SELECT *
FROM departments
ORDER BY dept_id ASC;
