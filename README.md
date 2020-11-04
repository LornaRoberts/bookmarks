///Bookmarks List///


###
User Story
```
As a user,
So that I choose a webpage to visit,
I’d like to be able see a list of bookmarks.
```
###
Domain Model:
```
Nouns- user, webpage, list, bookmarks
Actions- choose a webpage to visit, See a list of bookmarks

Actions- select, view (both owned by user)

Actions (property it changes) - select(bookmark), view(list)
```

##SQL HELP##
```
Connect to psql
Create the database using the psql command CREATE DATABASE bookmark_manager;
Connect to the database using the pqsl command \c bookmark_manager;
Run the query we have saved in the file 01_create_bookmarks_table.sql
```

###CREATE TEST ENVIRONMENT###
```
To create a test database, type psql, then type CREATE DATABASE "bookmark_manager_test";
Check that the database has been created by typing \l
Then, to create a table, type CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
check the table exists by typing \dt
