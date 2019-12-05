         SELECT customers.*
           FROM customers
LEFT OUTER JOIN customers_services
             ON customers.id = customer_id
          WHERE service_id IS NULL;

-- Further Exploration --

         SELECT customers.*, services.*
           FROM customers
LEFT OUTER JOIN customers_services ON customers.id = customer_id
FULL OUTER JOIN services           ON services.id = service_id
          WHERE service_id  IS NULL
             OR customer_id IS NULL;