SELECT p.product_name, count(oi.id)
FROM products AS p
JOIN order_items AS oi
on p.id = oi.product_id
GROUP BY p.product_name
ORDER BY count(oi.id) DESC;