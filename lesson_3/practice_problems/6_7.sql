SELECT e.name AS event, 
       e.starts_at,
       sc.name AS section,
       s.row,
       s.number AS seat
  FROM customers AS c
  JOIN tickets   AS t  ON t.customer_id = c.id
  JOIN events    AS e  ON t.event_id = e.id
  JOIN seats     AS s  ON t.seat_id = s.id
  JOIN sections  AS sc ON s.section_id = sc.id
 WHERE c.email = 'gennaro.rath@mcdermott.co';