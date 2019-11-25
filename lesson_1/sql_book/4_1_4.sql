CREATE TABLE customers (
  id serial PRIMARY KEY,
  name varchar(100)
);

CREATE TABLE email_addresses (
  customer_id integer PRIMARY KEY,
  email varchar(50),
  FOREIGN KEY (customer_id)
  REFERENCES customers(id)
  ON DELETE CASCADE
);

INSERT INTO customers (name) VALUES
  ('James Bergman'),
  ('Natasha O''Shea'),
  ('Aaron Muller');

INSERT INTO email_addresses VALUES
  (1, 'james1998@email.com'),
  (2, 'natasha@osheafamily.com');