SELECT sum(price) AS gross
  FROM customers_services
  JOIN services
    ON services.id = service_id;

