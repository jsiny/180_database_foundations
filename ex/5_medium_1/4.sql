          SELECT description
            FROM customers_services
RIGHT OUTER JOIN services ON services.id = service_id
           WHERE customer_id IS NULL;