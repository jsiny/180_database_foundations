SELECT sum(p.product_cost) AS "Total cost of Natasha's orders"
FROM customers AS c
JOIN orders AS o
ON c.id = o.customer_id
JOIN order_items AS i
ON o.id = i.order_id
JOIN products AS p
ON i.product_id = p.id
WHERE c.name = 'Natasha O''Shea';