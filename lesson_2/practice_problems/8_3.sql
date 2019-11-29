SELECT state, count(id)
  FROM people
 GROUP BY state
 ORDER BY count(id) DESC
 LIMIT 10;