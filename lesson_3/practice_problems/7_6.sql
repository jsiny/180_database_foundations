ALTER TABLE orders
ALTER COLUMN product_id
  SET NOT NULL;

-- ERROR:  column "product_id" contains null values