INSERT INTO celebrities (first_name, last_name, occupation, date_of_birth)
VALUES ('Elvis', 'Presley', 'singer, actor', '19350108');

UPDATE celebrities
SET deceased = true
WHERE first_name = 'Elvis';

ALTER TABLE celebrities
ALTER COLUMN deceased
SET NOT NULL;