SELECT DISTINCT customers.*
  FROM customers
  JOIN customers_services
    ON customers.id = customer_id;