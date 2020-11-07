Challenge: Dynamic Documents

Step 1
We've created a database for a documents app, with rows for each document with 
it's title, content, and author. In this first step, use UPDATE to change the 
author to 'Jackie Draper' for all rows where it's currently 'Jackie Paper'. Then 
re-select all the rows to make sure the table changed like you expected.

Step 2
Now you'll delete a row, being very careful not to delete all the rows. Only delete 
the row where the title is 'Things I'm Afraid Of'. Then re-select all the rows to 
make sure the table changed like you expected.

CREATE table documents (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    content TEXT,
    author TEXT);
    
INSERT INTO documents (author, title, content)
    VALUES ("Puff T.M. Dragon", "Fancy Stuff", "Ceiling wax, dragon wings, etc.");
INSERT INTO documents (author, title, content)
    VALUES ("Puff T.M. Dragon", "Living Things", "They're located in the left ear, you know.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Pirate Recipes", "Cherry pie, apple pie, blueberry pie.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Boat Supplies", "Rudder - guitar. Main mast - bed post.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Things I'm Afraid Of", "Talking to my parents, the sea, giant pirates, heights.");

SELECT * FROM documents;

UPDATE documents SET author = "Jackie Draper" WHERE author = "Jackie Paper";

SELECT * FROM documents;

--SELECT * FROM documents WHERE title like "Things I'm%";
DELETE FROM documents WHERE id = 5;

SELECT * FROM documents;

/**************************************************************************/

Challenge: Clothing alterations

Step 1
We've created a database of clothes, and decided we need a price column. Use 
ALTER to add a 'price' column to the table. Then select all the columns in each 
row to see what your table looks like now.

CREATE TABLE clothes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    type TEXT,
    design TEXT);
    
INSERT INTO clothes (type, design)
    VALUES ("dress", "pink polka dots");
INSERT INTO clothes (type, design)
    VALUES ("pants", "rainbow tie-dye");
INSERT INTO clothes (type, design)
    VALUES ("blazer", "black sequin");
/*
ALTER TABLE diary_logs ADD emotion TEXT default "unknown";

INSERT INTO diary_logs (user_id, date, content, emotion) VALUES (1, "2015-04-03",
    "We went to Disneyland!", "happy");
    
SELECT * FROM diary_logs;
*/

ALTER TABLE clothes ADD price INTEGER;
SELECT * FROM clothes;

UPDATE clothes SET price = 10 WHERE id = 1;
UPDATE clothes SET price = 20 WHERE id = 2;
UPDATE clothes SET price = 30 WHERE id = 3;

SELECT * FROM clothes;

INSERT INTO clothes (type, design, price) VALUES ("undies", "black panther", 8); 

SELECT * FROM clothes;

/**************************************************************************/

Project: App impersonator

Think about your favorite apps, and pick one that stores your data- like a game 
that stores scores, an app that lets you post updates, etc. Now in this project, 
you're going to imagine that the app stores your data in a SQL database (which is 
pretty likely!), and write SQL statements that might look like their own SQL.

CREATE a table to store the data.
INSERT a few example rows in the table.
Use an UPDATE to emulate what happens when you edit data in the app.
Use a DELETE to emulate what happens when you delete data in the app.

/* What does the app's SQL look like? */

CREATE TABLE mobile_prefixes 
    (id INTEGER PRIMARY KEY, mobile_prefix TEXT, mobile_network TEXT);
    
INSERT INTO mobile_prefixes (mobile_prefix, mobile_network) VALUES ("0905", 
"GLOBE/TM"), ("0915", "GLOBE/TM"), ("0916", "GLOBE_TM"), ("0917", "GLOBE/TM"), 
("0926", "GLOBE/TM"), ("0927", "GLOBE/TM"), ("0935", "GLOBE/TM"), ("0936", "GLOBE/TM"), 
("0937", "GLOBE/TM"), ("0945", "GLOBE/TM"), ("0918", "SMART"), ("0919", "SMART"), 
("0920", "SMART"), ("0921", "SMART"), ("0928", "SMART"), ("0922", "SUN"), ("0923", "SUN"), 
("0924", "SUN"), ("09173", "GLOBE POSTPAID"), ("09175", "GLOBE POSTPAID"), ("0927", "");

UPDATE mobile_prefixes SET mobile_network = "GLOBE/TM" WHERE mobile_network = "GLOBE_TM";

/* SELECT * FROM mobile_prefixes; */

DELETE FROM mobile_prefixes WHERE mobile_network = "";

/* SELECT * FROM mobile_prefixes; */
