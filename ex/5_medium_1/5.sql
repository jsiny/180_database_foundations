   SELECT name, string_agg(description, ', ') AS services
     FROM customers
LEFT JOIN customers_services ON customers.id = customer_id
LEFT JOIN services           ON services.id  = service_id
    GROUP BY customers.id
    ORDER BY customers.id;

-- Further Exploration --

         SELECT CASE lag(c.name) OVER (ORDER BY c.name)
                     WHEN c.name THEN NULL
                     ELSE c.name
                END  AS name,
                description
           FROM customers AS c
LEFT OUTER JOIN customers_services AS cs ON c.id = customer_id
LEFT OUTER JOIN services           AS s  ON s.id = service_id;
