SELECT year / 10 * 10       AS decade,
       round(avg(duration)) AS average_duration
  FROM films
 GROUP BY decade
 ORDER BY decade;