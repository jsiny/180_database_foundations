SELECT count(distinct customer_id) / count(distinct c.id)::float * 100
       AS percent
  FROM customers    AS c
  LEFT JOIN tickets AS t
    ON c.id = t.customer_id;