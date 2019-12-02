UPDATE films
   SET id = 1
 WHERE title = '1984';

-- ERROR:  duplicate key value violates unique constraint "films_pkey"
-- DETAIL:  Key (id)=(1) already exists.