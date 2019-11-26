SELECT first_name, last_name
FROM singers LEFT JOIN albums
ON singers.id = singer_id
WHERE albums.id IS NULL;