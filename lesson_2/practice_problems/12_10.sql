SELECT year / 10 * 10 AS decade,
       genre,
       STRING_AGG(title, ', ') AS films
  FROM films
 GROUP BY decade, genre
 ORDER BY decade;