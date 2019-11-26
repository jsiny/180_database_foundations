SELECT DISTINCT singers.first_name, singers.last_name
FROM albums JOIN singers
ON singer_id = singers.id
WHERE label = 'Warner Bros';