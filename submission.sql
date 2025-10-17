-- \c mainframe_override connect/enter the mainframe_override database
-- \d list relations
-- \d forum_posts get schemma of forum_posts
-- Search for any post where content includes the first part of the sentence listed in the README
SELECT * FROM forum_posts WHERE content ILIKE '%My dad works there and he%';

-- \d forum_accounts get information about forum_accounts schema
-- Get the first and last name fo the person with the username smart-money-44
SELECT * FROM forum_accounts WHERE username ='smart-money-44';

-- \d emptystack_accounts Get information about emptystack_accounts schema 
-- Get all the information about folks with the same last name
SELECT * FROM emptystack_accounts WHERE last_name = 'Steele';

-- Find which person with the same Steele last name has a forum_account
SELECT * FROM forum_accounts WHERE last_name = 'Steele' AND (first_name = 'Andrew' OR first_name= 'Lance');

-- Identifying the emptystack_accounts credentials are for Andrew Steele
SELECT * FROM emptystack_accounts WHERE last_name = 'Steele' AND first_name = 'Andrew';

-- Getting the data from the emptystack.sql file.
-- psql -f emptystack.sql 
-- \d emptystack_messages

-- Identifying all emptystack_messages that contain the word 'taxi' in the body and involve the triple-cart-38 user
SELECT * FROM emptystack_messages WHERE ("from"= 'triple-cart-38' OR "to" = 'triple-cart-38') AND body ILIKE '%taxi%';

-- Identifying the emptystack_accounts credentials are for the user with the 'your-boss-99' username
 SELECT * FROM emptystack_accounts WHERE username = 'your-boss-99';

-- Identifying the id for the project code TAXI
SELECT * FROM emptystack_projects WHERE code = 'TAXI';