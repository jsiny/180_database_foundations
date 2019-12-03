INSERT INTO contacts
VALUES (DEFAULT, 'Dup', 'Licate', 6343511126);

-- ERROR:  duplicate key value violates unique constraint "unique_number"
-- DETAIL:  Key (number)=(6343511126) already exists.