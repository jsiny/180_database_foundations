SELECT o.quantity, p.name
  FROM orders AS o
  JOIN products AS p
    ON o.product_id = p.id;