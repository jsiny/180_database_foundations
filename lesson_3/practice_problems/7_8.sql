CREATE TABLE reviews (
  id serial PRIMARY KEY,
  body text NOT NULL,
  product_id int REFERENCES products(id)
);