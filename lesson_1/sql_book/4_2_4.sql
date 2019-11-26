SELECT singers.first_name, singers.last_name, albums.album_name, albums.released
FROM singers JOIN albums
ON albums.singer_id = singers.id
WHERE albums.released >= '1980-01-01'
AND albums.released < '1990-01-01'
AND singers.deceased = false
ORDER BY singers.date_of_birth DESC;