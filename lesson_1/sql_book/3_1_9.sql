INSERT INTO orders (customer_name, burger, side, drink, customer_email, customer_loyalty_points, burger_cost, side_cost, drink_cost)
  VALUES ('James Bergman', 'LS Chicken Burger', 'Fries', 'Cola', 'james1998@email.com', 28, 4.5, 0.99, 1.50),
         ('Natasha O''Shea', 'LS Cheeseburger', 'Fries', null, 'natasha@osheafamily.com', 18, 3.50, 0.99, DEFAULT),
         ('Natasha O''Shea', 'LS Double Deluxe Burger', 'Onion Rings', 'Chocolate Shake', 'natasha@osheafamily.com', 42, 6, 1.5, 2),
         ('Aaron Muller', 'LS Burger', null, null, null, 10, 3, DEFAULT, DEFAULT);