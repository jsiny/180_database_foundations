SELECT title, name
  FROM films            AS f
  JOIN directors_films  AS df   ON df.film_id = f.id
  JOIN directors        AS d    ON df.director_id = d.id
 ORDER BY title;