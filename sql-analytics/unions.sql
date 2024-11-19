-- i have to create a new table here for this example.

CREATE TABLE items_1 (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  price DECIMAL(10,2)
);

INSERT INTO items_1 VALUES
  (1, 'item_1', 120.00),
  (2, 'item_2', 130.99),
  (3, 'item_3', 126.99),
  (4, 'item_4', 215.89),
  (5, 'item_5', 187.99);

CREATE TABLE items_2 (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  price DECIMAL(10,2)
);

INSERT INTO items_2 VALUES
  (6, 'item_6', 99.99),
  (7, 'item_7', 86.00),
  (8, 'item_8', 89.99),
  (9, 'item_9', 78.89),
  (10, 'item_10', 99.99);

-- finally, we can use a UNION!

SELECT * FROM items_1
UNION -- combines all of the data from the above table into the table below IF both tables have the same number of columns
SELECT * FROM items_2;
