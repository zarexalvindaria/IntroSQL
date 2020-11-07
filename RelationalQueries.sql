Challenge: Bobby's Hobbies

Step 1
We've created a database of people and hobbies, and each row in hobbies is related 
to a row in persons via the person_id column. In this first step, insert one more row 
in persons and then one more row in hobbies that is related to the newly inserted person.

Step 2
Now, select the 2 tables with a join so that you can see each person's name next to their hobby.

Step 3
Now, add an additional query that shows only the name and hobbies of 'Bobby McBobbyFace', using JOIN combined with WHERE.

CREATE TABLE persons (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    age INTEGER);
    
INSERT INTO persons (name, age) VALUES ("Bobby McBobbyFace", 12);
INSERT INTO persons (name, age) VALUES ("Lucy BoBucie", 25);
INSERT INTO persons (name, age) VALUES ("Banana FoFanna", 14);
INSERT INTO persons (name, age) VALUES ("Shish Kabob", 20);
INSERT INTO persons (name, age) VALUES ("Fluffy Sparkles", 8);


CREATE table hobbies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id INTEGER,
    name TEXT);
    
INSERT INTO hobbies (person_id, name) VALUES (1, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (1, "coding");
INSERT INTO hobbies (person_id, name) VALUES (2, "dancing");
INSERT INTO hobbies (person_id, name) VALUES (2, "coding");
INSERT INTO hobbies (person_id, name) VALUES (3, "skating");
INSERT INTO hobbies (person_id, name) VALUES (3, "rowing");
INSERT INTO hobbies (person_id, name) VALUES (3, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (4, "coding");
INSERT INTO hobbies (person_id, name) VALUES (4, "dilly-dallying");
INSERT INTO hobbies (person_id, name) VALUES (4, "meowing");

-- SELECT * FROM persons;
-- SELECT * FROM hobbies;

    
/* SELECT persons.name person_name, GROUP_CONCAT(hobbies.name, ", ") as hobby_name FROM persons
--     JOIN hobbies WHERE persons.id = hobbies.person_id
--     GROUP BY person_name; */

INSERT INTO persons (name, age) VALUES ("Mark Santos", 21);
INSERT INTO hobbies (person_id, name) VALUES (6, "riding");

SELECT persons.name, hobbies.name FROM persons
    JOIN hobbies ON persons.id = hobbies.person_id;
    
SELECT persons.name, hobbies.name FROM persons
    JOIN hobbies ON persons.id = hobbies.person_id
    WHERE persons.name = 'Bobby McBobbyFace';

/*****************************************************************************************/

Challenge: Customer's orders

Step 1
We've created a database for customers and their orders. Not all of the customers have made orders, 
however. Come up with a query that lists the name and email of every customer followed by the item and 
price of orders they've made. Use a LEFT OUTER JOIN so that a customer is listed even if they've made no 
orders, and don't add any ORDER BY.

Step 2
Now, create another query that will result in one row per each customer, with their name, email, and total 
amount of money they've spent on orders. Sort the rows according to the total money spent, from the most 
spent to the least spent.
(Tip: You should always GROUP BY on the column that is most likely to be unique in a row.)

CREATE TABLE customers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    email TEXT);
    
INSERT INTO customers (name, email) VALUES ("Doctor Who", "doctorwho@timelords.com");
INSERT INTO customers (name, email) VALUES ("Harry Potter", "harry@potter.com");
INSERT INTO customers (name, email) VALUES ("Captain Awesome", "captain@awesome.com");

CREATE TABLE orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER,
    item TEXT,
    price REAL);

INSERT INTO orders (customer_id, item, price)
    VALUES (1, "Sonic Screwdriver", 1000.00);
INSERT INTO orders (customer_id, item, price)
    VALUES (2, "High Quality Broomstick", 40.00);
INSERT INTO orders (customer_id, item, price)
    VALUES (1, "TARDIS", 1000000.00);

-- SELECT * FROM customers; SELECT * FROM orders;

SELECT name, email, item, price FROM customers 
LEFT OUTER JOIN orders ON customers.id = orders.customer_id;

SELECT name, email, total(price) total_money_spent FROM customers 
    LEFT OUTER JOIN orders ON customers.id = orders.customer_id 
    GROUP BY email ORDER BY total_money_spent DESC;

/*****************************************************************************************/

Challenge: Sequels in SQL

Step 1
We've created a table with all the 'Harry Potter' movies, with a sequel_id column that matches 
the id of the sequel for each movie. Issue a SELECT that will show the title of each movie next 
to its sequel's title (or NULL if it doesn't have a sequel).

CREATE TABLE movies (id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    released INTEGER,
    sequel_id INTEGER);

INSERT INTO movies 
    VALUES (1, "Harry Potter and the Philosopher's Stone", 2001, 2);
INSERT INTO movies 
    VALUES (2, "Harry Potter and the Chamber of Secrets", 2002, 3);
INSERT INTO movies 
    VALUES (3, "Harry Potter and the Prisoner of Azkaban", 2004, 4);
INSERT INTO movies 
    VALUES (4, "Harry Potter and the Goblet of Fire", 2005, 5);
INSERT INTO movies 
    VALUES (5, "Harry Potter and the Order of the Phoenix ", 2007, 6);
INSERT INTO movies 
    VALUES (6, "Harry Potter and the Half-Blood Prince", 2009, 7);
INSERT INTO movies 
    VALUES (7, "Harry Potter and the Deathly Hallows – Part 1", 2010, 8);
INSERT INTO movies 
    VALUES (8, "Harry Potter and the Deathly Hallows – Part 2", 2011, NULL);

-- SELECT * FROM movies;

SELECT movies.title, sequel.title sequel_title
    FROM movies
    LEFT OUTER JOIN movies sequel
    ON movies.sequel_id = sequel.id;
    
/*****************************************************************************************/

Challenge: FriendBook

Step 1
We've created a database for a friend networking site, with a table storing data on each person, 
a table on each person's hobbies, and a table of friend connections between the people. In this first step, 
use a JOIN to display a table showing people's names with their hobbies.

Step 2
Now, use another SELECT with a JOIN to show the names of each pair of friends, based on the data in the friends table.

CREATE TABLE persons (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fullname TEXT,
    age INTEGER);
    
INSERT INTO persons (fullname, age) VALUES ("Bobby McBobbyFace", "12");
INSERT INTO persons (fullname, age) VALUES ("Lucy BoBucie", "25");
INSERT INTO persons (fullname, age) VALUES ("Banana FoFanna", "14");
INSERT INTO persons (fullname, age) VALUES ("Shish Kabob", "20");
INSERT INTO persons (fullname, age) VALUES ("Fluffy Sparkles", "8");

CREATE table hobbies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id INTEGER,
    name TEXT);
    
INSERT INTO hobbies (person_id, name) VALUES (1, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (1, "coding");
INSERT INTO hobbies (person_id, name) VALUES (2, "dancing");
INSERT INTO hobbies (person_id, name) VALUES (2, "coding");
INSERT INTO hobbies (person_id, name) VALUES (3, "skating");
INSERT INTO hobbies (person_id, name) VALUES (3, "rowing");
INSERT INTO hobbies (person_id, name) VALUES (3, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (4, "coding");
INSERT INTO hobbies (person_id, name) VALUES (4, "dilly-dallying");
INSERT INTO hobbies (person_id, name) VALUES (4, "meowing");

CREATE table friends (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person1_id INTEGER,
    person2_id INTEGER);

INSERT INTO friends (person1_id, person2_id)
    VALUES (1, 4);
INSERT INTO friends (person1_id, person2_id)
    VALUES (2, 3);


SELECT persons.fullname person_name, hobbies.name hobby_name FROM persons
JOIN hobbies on hobbies.person_id = persons.id;

SELECT a.fullname, b.fullname FROM friends
    JOIN persons a
    ON friends.person1_id = a.id
    JOIN persons b
    ON friends.person2_id = b.id;

/*****************************************************************************************/

Project: Famous people

In this project, you’re going to make your own table with some small set of “famous people”, 
then make more tables about things they do and join those to create nice human readable lists.

For example, here are types of famous people and the questions your data could answer:

Movie stars: What movies are they in? Are they married to each other?
Singers: What songs did they write? Where are they from?
Authors: What books did they write?
Fictional characters: How are they related to other characters? What books do they show up in?

/* Create table about the people and what they do here */

CREATE TABLE famous_people 
(id INTEGER PRIMARY KEY, name TEXT, job TEXT);

CREATE TABLE movies
(id INTEGER PRIMARY KEY, name TEXT, famous_people_id INTEGER);

CREATE TABLE couples
(id INTEGER PRIMARY KEY, people_id_1 INTEGER, people_id_2 INTEGER);

INSERT INTO famous_people(name, job)
VALUES ('Leonardo DiCaprio', 'actor'), ('Angelina Jolie', 'actress'),
('Brad Pitt', 'actor'), ('Kate Winslet','actress'), ('Britney Spears', 'singer'),  ('Jessica Biel', 'actress'), ('Sacha Baron Cohen', 'actor'), ('Isla Fisher','actress'), ('Beyonce', 'singer'),  ('Justin Timberlake','singer'), ('Jay Z' , 'singer'), ('Steve Carell', 'actor'), ('Nancy Carell', 'actress'), ('Seth Rogen', 'actor'), ('Lauren Miller', 'actress');

INSERT INTO movies(name, famous_people_id)
VALUES('Titanic', 1), ('Maleficent', 2), ('Fight Club', 3), ('World War Z', 3), ('Titanic', 4), ('The Dressmaker', 4), ('Total Recall', 6), ('Borat', 7), ('Now You See Me', 8), ('In Time', 10), ('Friends with Benefits', 10);

INSERT INTO couples (people_id_1, people_id_2)
VALUES (2, 3), (1, 4), (6, 10), (7,8), (9, 11), (12, 13), (14, 15);

SELECT * FROM famous_people;
SELECT * FROM movies;
SELECT * FROM couples;

SELECT fp1.name, fp2.name
FROM couples
JOIN famous_people fp1 ON couples.people_id_1 = fp1.id
JOIN famous_people fp2 ON couples.people_id_2 = fp2.id; 

/*****************************************************************************************/
