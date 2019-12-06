SELECT id FROM items
 WHERE (ROW('Painting', 100.00, 250.00) = 
        ROW(name, initial_price, sales_price));

--                                            QUERY PLAN                                           
-- ------------------------------------------------------------------------------------------------
--  Seq Scan on items  (cost=0.00..25.40 rows=1 width=4) (actual time=0.013..0.014 rows=1 loops=1)
--    Filter: (('Painting'::text = name) AND (100.00 = initial_price) AND (250.00 = sales_price))
--    Rows Removed by Filter: 5
--  Planning time: 0.063 ms
--  Execution time: 0.029 ms
-- (5 rows)
