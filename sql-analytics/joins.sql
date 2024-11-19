-- joins are fun.

SELECT * 
FROM employees e
JOIN departments d ON d.dept = e.dept; -- joining in this way will cause two duplicate "dept" tables

-- in order to prevent further errors when searching tables, ensure the columns needed in the SELECT statement do not duplicate

SELECT e.employ_id, e.employ_name, e.dept, d.dept_id, e.salary
FROM employees e
JOIN departments d ON d.dept = e.dept; -- this will make the employees and depts tables into one big table.

-- JOINs automatically sort the bigger table by ascending order unless ORDER BY is used. even if I switch the tables the order will stay the same.

SELECT e.employ_id, e.employ_name, e.dept, d.dept_id, e.salary
FROM departments d
JOIN employees e ON d.dept = e.dept; 

-- however, LEFT JOINs sort the data from a parent table by ascending order. the parent table is whichever table called for in the FROM statement.

SELECT e.employ_id, e.employ_name, e.dept, d.dept_id, e.salary
FROM employees e
LEFT JOIN departments d ON d.dept = e.dept; -- if I wanted to flip which table is sorted, I would select from departments rather than employees.

-- RIGHT JOINs do the opposite, sorting the data from a child table by ascending order. the child table is whichever table is NOT called for in the FROM statement.

SELECT e.employ_id, e.employ_name, e.dept, d.dept_id, e.salary
FROM employees e
RIGHT JOIN departments d ON d.dept = e.dept;
