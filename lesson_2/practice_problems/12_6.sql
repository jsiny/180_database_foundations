SELECT genre, round(avg(duration)) AS average_duration
  FROM films
 GROUP BY genre;