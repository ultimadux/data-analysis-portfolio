-- refer to the database in database-admin
-- in extremely large databases, a limit statement may save memory.

SELECT * -- select all columns and rows
FROM employees e -- from the table employees
LIMIT 10; -- keep only the first ten options generated

-- however this isnt the only use of it. if we want to see, say, the employee who makes the most money, we can use LIMIT

SELECT *
FROM employees e
ORDER BY salary DESC -- order all employees by salary in descending order
LIMIT 1; -- then only show me the first option, so that we can know who the person who makes the most money is

-- we can also do this for the employee who makes the least money

SELECT *
FROM employees e
ORDER BY salary ASC -- order all employees by salary in ascending order
LIMIT 1; -- lets us know who the person who makes the LEAST money is
