SELECT first_name, last_name
FROM singers
WHERE singers.id
NOT IN (SELECT singer_id FROM albums);