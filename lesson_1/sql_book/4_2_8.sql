SELECT DISTINCT o.id
FROM orders AS o
JOIN order_items AS i
ON o.id = i.order_id
JOIN products AS p
ON i.product_id = p.id
WHERE product_name = 'Fries';