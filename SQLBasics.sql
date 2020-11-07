/* Challenge: Book list database */

/**
Smartcuts 10,
Dream Teams 10,
Outliers 9
**/

CREATE TABLE favorite_books (id INTEGER PRIMARY KEY, name TEXT, rating INTEGER);

INSERT INTO favorite_books VALUES (1, "Smartcuts", 10);
INSERT INTO favorite_books VALUES (2, "Dream Teams", 10);
INSERT INTO favorite_books VALUES (3, "Outliers", 9);
SELECT * FROM favorite_books;

/****************************************************/

Challenge: Box office hits database

This database contains an incomplete list of box office hits and their release year. 
In this challenge, you're going to get the results back out of the database in different ways! In this first step,
just select all the movies.

Filter recent movies
Now, add a second query after the first, that retrieves only the movies that were released in the year 2000 or later,
not before. Sort the results so that the earlier movies are listed first. You should have 2 SELECT statements after this step.

CREATE TABLE movies (id INTEGER PRIMARY KEY, name TEXT, release_year INTEGER);
INSERT INTO movies VALUES (1, "Avatar", 2009);
INSERT INTO movies VALUES (2, "Titanic", 1997);
INSERT INTO movies VALUES (3, "Star Wars: Episode IV - A New Hope", 1977);
INSERT INTO movies VALUES (4, "Shrek 2", 2004);
INSERT INTO movies VALUES (5, "The Lion King", 1994);
INSERT INTO movies VALUES (6, "Disney's Up", 2009);
 
SELECT * from movies;
SELECT * from movies WHERE release_year > 2000 ORDER BY release_year;

/****************************************************/

Challenge: TODO list database stats


Step 1
Here's a table containing a TODO list with the number of minutes it will take to complete each item. 
Insert another item to your todo list with the estimated minutes it will take.

Step 2
Select the SUM of minutes it will take to do all of the items on your TODO list. You should only have one SELECT statement.


CREATE TABLE todo_list (id INTEGER PRIMARY KEY, item TEXT, minutes INTEGER);
INSERT INTO todo_list VALUES (1, "Wash the dishes", 15);
INSERT INTO todo_list VALUES (2, "vacuuming", 20);
INSERT INTO todo_list VALUES (3, "Learn some stuff on KA", 30);
INSERT INTO todo_list VALUES (4, "Eat breakfast", 20);

SELECT SUM(minutes) FROM todo_list;

/****************************************************/

Create your own store! Your store should sell one type of things, 
like clothing or bikes, whatever you want your store to specialize in. 
You should have a table for all the items in your store, and at least 
5 columns for the kind of data you think you'd need to store. You should 
sell at least 15 items, and use select statements to order your items by 
price and show at least one statistic about the items.


CREATE TABLE products (id INTEGER PRIMARY KEY, product_name TEXT, product_type TEXT, description TEXT, price INTEGER);

INSERT INTO products VALUES (1, "Best Cupcake", "snack", "cupcake", 25);
INSERT INTO products VALUES (2, "JCO", "snack", "donut", 40);
INSERT INTO products VALUES (3, "Dunkin' Donuts", "snack", "donut", 25);
INSERT INTO products VALUES (4, "French Fries", "snack", "fries", 30);
INSERT INTO products VALUES (5, "Yumburger", "snack", "burger", 45);
INSERT INTO products VALUES (6, "Fudgee Barr", "snack", "cake", 25);
INSERT INTO products VALUES (7, "Pancake", "snack", "cake", 25);
INSERT INTO products VALUES (8, "Coke", "drink", "soda", 20);
INSERT INTO products VALUES (9, "Sprite", "drink", "soda", 20);
INSERT INTO products VALUES (10, "Royal", "drink", "soda", 20);
INSERT INTO products VALUES (11, "Best Milktea", "drink", "tea", 120);
INSERT INTO products VALUES (12, "Mineral watah", "drink", "water", 5);
INSERT INTO products VALUES (13, "Python Energy Drink", "drink", "energy drink", 40);
INSERT INTO products VALUES (14, "Bear Brand Low Fat Milk", "drink", "milk", 70);
INSERT INTO products VALUES (15, "Best Wine", "drink", "wine", 230);


SELECT * FROM products ORDER BY price;
SELECT SUM(price) FROM products;

/****************************************************/
