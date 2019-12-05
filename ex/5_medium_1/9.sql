SELECT sum(price)
  FROM customers_services
  JOIN services
    ON services.id = service_id
 WHERE price >= 100;

SELECT sum(price)
  FROM customers
 CROSS JOIN services
 WHERE price >= 100;