SELECT description, count(customer_id)
  FROM services
  JOIN customers_services ON service_id = services.id
 GROUP BY description
HAVING count(customer_id) >= 3;