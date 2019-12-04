SELECT name AS director,
       count(film_id) AS films
  FROM directors
  JOIN directors_films
    ON directors_films.director_id = directors.id
 GROUP BY director
 ORDER BY films DESC, director;