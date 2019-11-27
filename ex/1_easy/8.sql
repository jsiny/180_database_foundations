ALTER TABLE birds
ADD CONSTRAINT positive_age
CHECK (age > 0);

-- or --
ALTER TABLE birds ADD CHECK (age > 0);

-- Testing new constraint --

INSERT INTO birds (name, age, species)
VALUES ('Test', -3, 'Dove');

--ERROR:  new row for relation "birds" violates check constraint "positive_age"
--DETAIL:  Failing row contains (6, Test, -3, Dove).