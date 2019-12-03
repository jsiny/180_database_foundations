DELETE FROM orders
 WHERE id = 4;

INSERT INTO orders (quantity)
VALUES (10);

-- ERROR:  null value in column "product_id" violates not-null constraint
-- DETAIL:  Failing row contains (5, null, 10).