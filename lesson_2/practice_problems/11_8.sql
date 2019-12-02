ALTER TABLE films
  ADD COLUMN other_id serial PRIMARY KEY;

-- ERROR:  multiple primary keys for table "films" are not allowed