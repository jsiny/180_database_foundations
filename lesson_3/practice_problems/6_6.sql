SELECT c.id, c.email, count(distinct t.event_id)
  FROM customers AS c
  JOIN tickets   AS t
    ON c.id = t.customer_id
 GROUP BY c.id
HAVING count(distinct t.event_id) = 3;