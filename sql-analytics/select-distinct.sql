-- what if i want to find each different salary? well, I can use SELECT DISTINCT!

SELECT DISTINCT salary
FROM employees e;

/* this will show me all of the different salary values present in the sheet without showing repeats, which is useful for seeing wage diversity.
   i could also do the same for employment dates. */

SELECT DISTINCT employ_date
FROM employees e;
