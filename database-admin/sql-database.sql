-- DELETE all tables from memory if they already exist

DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;

-- decide base pay for employees of each level

DECLARE @_l1 INT;
SET @_l1 = 20;

DECLARE @_l2 INT;
SET @_l2 = 24;

DECLARE @_l3 INT;
SET @_l3 = 28;

DECLARE @_l4 INT;
SET @_l4 = 35;

DECLARE @_l5 INT;
SET @_l5 = 45;

DECLARE @_l6 INT;
SET @_l6 = 55;

CREATE TABLE employees ( -- create table of employee data
	employ_id INT PRIMARY KEY,
	employ_name VARCHAR(50),
	employ_date DATE,
	dept VARCHAR(50),
	pay_type VARCHAR(50)
);

CREATE TABLE departments ( -- create table of department data
	dept_id INT PRIMARY KEY,
	dept VARCHAR(50)
);

INSERT INTO employees(employ_id, employ_name, employ_date, dept, pay_type)
	VALUES
		(42671669, 'Jonathan Balroy', '2024-03-08', 'warehouse', 'L1'),
		(57831485, 'Brian Connor', '2022-11-21', 'warehouse', 'L1'),
		(92780910, 'Ben Mackey', '2023-09-13', 'warehouse', 'L1'),
		(53674868, 'Kendrick Haynes', '2020-10-19', 'warehouse', 'L1'),
		(97472661, 'Charles Kinley', '2023-12-29', 'warehouse', 'L1'),
		(46431529, 'Hananiah Bunch', '2023-04-21', 'warehouse', 'L1'),
		(50226009, 'Aharon Tiara', '2024-05-24', 'warehouse', 'L1'),
		(64835363, 'Randúlfr Markéta', '2024-02-14', 'warehouse', 'L1'),
		(37214434, 'Trish Miodrag', '2024-08-18', 'warehouse', 'L1'),
		(93098621, 'Antonia Ligia', '2024-07-20', 'warehouse', 'L1'),
		(68452305, 'Bruno Mars', '2024-06-11', 'warehouse', 'L1'),
		(93889573, 'Isaac Mack', '2024-06-11', 'warehouse', 'L1'),
		(71481326, 'Uriel Sanchez', '2024-06-11', 'warehouse', 'L1'),
		(92758535, 'Jonecia Rogers', '2024-05-24', 'warehouse', 'L1'),

		(68801052, 'Jontavia Rogers', '2024-05-24', 'inbound', 'L1'),
		(29364664, 'Harmony Black', '2024-05-24', 'inbound', 'L1'),
		(45568560, 'Joseph Fane', '2024-05-24', 'inbound', 'L1'),
		(82903476, 'John Oliver', '2024-02-26', 'inbound', 'L1'),
		(17500789, 'Sandra Oliver', '2024-02-26', 'inbound', 'L1'),
		(41350826, 'Bruce Oliver', '2024-02-26', 'inbound', 'L1'),
		(59892768, 'Jordan Bunch', '2024-01-11', 'inbound', 'L1'),
		(95723255, 'Jordon McKinney', '2024-01-18', 'inbound', 'L1'),
		(71147066, 'Lanekia Rogers', '2024-04-28', 'inbound', 'L1'),
		(28008529, 'Benjamin Goodman', '2024-07-24', 'inbound', 'L1'),
		(38607976, 'Brandon Whiteman', '2024-06-29', 'inbound', 'L1'),

		(43263563, 'Deontae Bussey', '2023-10-30', 'outbound', 'L1'),
		(90720918, 'Lonica Blackman', '2023-10-30', 'outbound', 'L1'),
		(34867180, 'Delana Blackman', '2023-10-30', 'outbound', 'L1'),
		(56567173, 'Kyra Hoodley', '2023-08-21', 'outbound', 'L1'),
		(22658898, 'Brett Kidd', '2023-05-22', 'outbound', 'L1'),
		(86952238, 'Sandra Young', '2024-04-15', 'outbound', 'L1'),
		(57778848, 'Nicole Houston', '2024-04-15', 'outbound', 'L1'),
		(57264222, 'Yolanda Beckert', '2024-11-30', 'outbound', 'L1'),
		(84862479, 'Camilla Farrell', '2023-11-30', 'outbound', 'L1'),
		(35828268, 'Delana Richardson', '2023-12-10', 'outbound', 'L1'),

		(10525792, 'Brianna Goldford', '2023-01-04', 'clerical', 'L2'),

		(28500339, 'Terrence Crawford', '2023-01-04', 'icqa', 'L2'),
		(19757387, 'Deontae Richardson', '2023-01-04', 'icqa', 'L2'),
		(68028675, 'Tiffany Porter', '2023-01-04', 'icqa', 'L2'),
		(14337171, 'Sal Porter', '2023-01-04', 'icqa', 'L2'),
		(87816960, 'Bianca Barry', '2023-01-04', 'icqa', 'L2'),

		(11111111, 'Jorden Elebor', '2023-01-04', 'it', 'L3'),
		(40887558, 'Michael Maximoff', '2023-01-04', 'it', 'L3'),

		(99669204, 'Gary Miles', '2023-01-04', 'maintenance', 'L3'),
		(85425085, 'Isaiah Moore', '2023-01-04', 'maintenance', 'L3'),
		(92891027, 'Gabriel Iglesias', '2023-01-04', 'maintenance', 'L3'),
		(72703390, 'Rodrigo Sanchez', '2023-01-04', 'maintenance', 'L3'),
		(12595041, 'Lucas Hughes', '2023-01-04', 'maintenance', 'L3'),

		(73229376, 'Anaiah Hughston', '2023-02-12', 'trans specialist', 'L3'),
		(70007121, 'Linda Mosley', '2023-02-12', 'trans specialist', 'L3'),
		(30814039, 'Ricardo Fernandez', '2023-03-27', 'trans specialist', 'L3'),
		(62307313, 'Eduardo Lopez', '2023-01-04', 'trans specialist', 'L3'),

		(33580571, 'Terrence Johnson', '2023-01-04', 'area manager', 'L4'),
		(41180505, 'Keon Browner', '2023-01-04', 'area manager', 'L4'),
		(98885305, 'Nicole Billingslea', '2023-01-04', 'area manager', 'L4'),
		(54623620, 'Brianna Mathis', '2023-01-04', 'area manager', 'L4'),

		(43128122, 'Cartajun Johnson', '2023-01-04', 'ops', 'L5'),
		(21337053, 'Harrison Ford', '2023-01-04', 'ops', 'L5'),

		(33795069, 'Kyle Moore', '2023-01-04', 'site lead', 'L6');

INSERT INTO departments(dept_id, dept)
	VALUES
		(513, 'warehouse'),
		(786, 'inbound'),
		(537, 'outbound'),
		(854, 'icqa'),
		(214, 'area manager'),
		(244, 'ops'),
		(587, 'site lead'),
		(758, 'trans specialist'),
		(713, 'maintenance'),
		(498, 'it'),
		(501, 'clerical');

-- calculate the salary of each individual employee

ALTER TABLE employees
	ADD salary INT;

UPDATE employees
SET salary = @_l1 * 40 * 52
WHERE pay_type = 'L1';

UPDATE employees -- ensure employees have pay based on their level
SET salary = @_l2 * 40 * 52
	WHERE pay_type = 'L2';

UPDATE employees
SET salary = @_l3 * 40 * 52
	WHERE pay_type = 'L3';

UPDATE employees
SET salary = @_l4 * 40 * 52
	WHERE pay_type = 'L4';

UPDATE employees
SET salary = @_l5 * 40 * 52
	WHERE pay_type = 'L5';

UPDATE employees
SET salary = @_l6 * 40 * 52
	WHERE pay_type = 'L6';

-- ensure employee pay is increased based on loyalty

UPDATE employees
SET salary = salary + (.75 * 40 * 52)
	WHERE DATEDIFF(MONTH, employ_date, '2024-11-17') >= 6
	AND DATEDIFF(MONTH, employ_date, '2024-11-17') < 12;

UPDATE employees
SET salary = salary + (1.50 * 40 * 52)
	WHERE DATEDIFF(MONTH, employ_date, '2024-11-17') >= 12
	AND DATEDIFF(MONTH, employ_date, '2024-11-17') < 18;

UPDATE employees
SET salary = salary + (2.25 * 40 * 52)
	WHERE DATEDIFF(MONTH, employ_date, '2024-11-17') >= 18
	AND DATEDIFF(MONTH, employ_date, '2024-11-17') < 24;

UPDATE employees
SET salary = salary + (3.75 * 40 * 52)
	WHERE DATEDIFF(MONTH, employ_date, '2024-11-17') >= 24
	AND DATEDIFF(MONTH, employ_date, '2024-11-17') < 36;

UPDATE employees
SET salary = salary + (5.5 * 40 * 52)
	WHERE DATEDIFF(MONTH, employ_date, '2024-11-17') >= 36;

SELECT * FROM employees e
ORDER BY salary ASC;

SELECT *
FROM departments
ORDER BY dept_id ASC;
