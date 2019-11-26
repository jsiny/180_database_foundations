SELECT DISTINCT c.name AS "Customers who like Fries"
FROM orders AS o
JOIN customers AS c
ON c.id = o.customer_id
JOIN order_items AS i
ON o.id = i.order_id
JOIN products AS p
ON i.product_id = p.id
WHERE product_name = 'Fries';