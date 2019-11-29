-- psql -d test < 7_dump.sql 

/*
1. This file contains SQL statements that get executed when imported into a
   database.

2. NOTICE:  table "films" does not exist, skipping
   DROP TABLE     > drop a table called 'films' if it exists
   CREATE TABLE   > create a table 'films'
   INSERT 0 1     > insert one record into the table (x3)
   INSERT 0 1
   INSERT 0 1

3. The first line drops the films table if it already exists.
*/