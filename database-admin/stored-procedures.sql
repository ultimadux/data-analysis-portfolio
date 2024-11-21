-- stored procedures allow a user to run a block of code by referencing it by name.

CREATE PROCEDURE showTable -- create a procedure to create a reference
AS
SELECT * FROM shift_a
GO; -- lets sql server know that the block of code is done.

-- now instead of typing out a select statement we can EXEC it by name.

EXEC showTable;
