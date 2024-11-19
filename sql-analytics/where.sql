-- WHERE is used to filter out data that does not fit within its criteria. most useful when analysing databases with hundreds to thousands of rows.

SELECT *
FROM employees e
WHERE salary >= 50000; -- find all values where the salary is $50,000 or more. if not, do not show.

-- it can be used to search for data with text strings, such as dept names.

SELECT *
FROM employees e
WHERE dept = 'icqa';

-- however, when looking for values that are not exact matches, one must use LIKE instead of =.

SELECT *
FROM employees e
WHERE employ_name LIKE 'J%'; -- searches data for all employees whose names start with the letter "J".

-- what if I want to find all of the Deontaes in the database?

SELECT *
FROM employees e
WHERE employ_name LIKE 'Deontae%';

-- what about all of the Richardson family?

SELECT *
FROM employees e
WHERE employ_name LIKE '%Richardson'; -- searches data for all people with Richardson as their last name

-- hmm. how many different Jordans are there, including every nontraditional spelling?

SELECT *
FROM employees e
WHERE employ_name LIKE 'Jord_n%'; -- searches data for all people with Jordan as a first name, but a weird spelling.

-- AND can be used to look for two criteria at once.

SELECT *
FROM employees e
WHERE employ_name LIKE 'Jord_n%' AND dept = 'it';  -- search for a Jordan subsidiary who is in the IT department

-- OR can be used as well to look for people who are within one criteria or the other

SELECT *
FROM employees e
WHERE employ_name LIKE 'Deontae%' OR salary > 70000; -- search for anyone named Deontae or anyone with a salary above 70,000 a year
