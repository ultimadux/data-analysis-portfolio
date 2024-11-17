-- DELETE the table if it already exists

DROP TABLE IF EXISTS generatedTable;

DECLARE @i INT = 1 -- bring a variable into the query that can be looped 50 times

-- create the table

CREATE TABLE generatedTable (
	employeeID INT PRIMARY KEY,
	employeeName VARCHAR(50)
);

WHILE @i < 50
	BEGIN
		INSERT INTO generatedTable(employeeID, employeeName)
		VALUES
			(@i, CONCAT('employee_', @i)) -- concatenate employee names
		SET @i = @i + 1
	END;

SELECT *
	FROM generatedTable;