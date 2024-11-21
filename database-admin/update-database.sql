/* 
  ===========================================================================================================================================
  this SQL query will do several things, all in this order:

  1) create a procedure that allows a user to see a full table of all information combined with a simple EXEC reference
  2) create two tables of data, one with information of a client's men and one with information of a client's women
  3) calculate the ages of each person defined by their birthdate to the current date
  4) EXEC the procedure, showing the result
  ===========================================================================================================================================
*/

DROP TABLE IF EXISTS men;
DROP TABLE IF EXISTS women;
DROP PROCEDURE IF EXISTS showFullTable;

GO

CREATE PROCEDURE showFullTable AS
BEGIN
  SELECT * FROM men
  UNION
  SELECT * FROM women
END

GO

CREATE TABLE men (
  first_name NVARCHAR(50) PRIMARY KEY,
  last_name NVARCHAR(50),
  birth_date DATE
);

CREATE TABLE women (
  first_name NVARCHAR(50) PRIMARY KEY,
  last_name NVARCHAR(50),
  birth_date DATE
);

INSERT INTO men(first_name, last_name, birth_date) VALUES ('Maynard', 'Horton', '1987-11-11');
INSERT INTO women(first_name, last_name, birth_date) VALUES ('Priscilla', 'Maxwell', '1992-06-03');

ALTER TABLE men
ADD age REAL

ALTER TABLE women
ADD age REAL

UPDATE men
  SET age = DATEDIFF(YEAR, birth_date, GETDATE())
  WHERE age IS NULL;

UPDATE women
  SET age = DATEDIFF(YEAR, birth_date, GETDATE())
  WHERE age IS NULL;
  
EXEC showFullTable;
