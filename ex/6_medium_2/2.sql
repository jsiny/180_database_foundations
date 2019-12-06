SELECT name AS "Bid on Items" FROM items
WHERE id IN (SELECT item_id FROM bids);

--                                                      QUERY PLAN                                                      
-- ---------------------------------------------------------------------------------------------------------------------
--  Hash Join  (cost=33.38..59.38 rows=440 width=32) (actual time=0.047..0.053 rows=5 loops=1)
--    Hash Cond: (items.id = bids.item_id)
--    ->  Seq Scan on items  (cost=0.00..18.80 rows=880 width=36) (actual time=0.009..0.011 rows=6 loops=1)
--    ->  Hash  (cost=30.88..30.88 rows=200 width=4) (actual time=0.034..0.034 rows=5 loops=1)
--          Buckets: 1024  Batches: 1  Memory Usage: 9kB
--          ->  HashAggregate  (cost=28.88..30.88 rows=200 width=4) (actual time=0.028..0.031 rows=5 loops=1)
--                Group Key: bids.item_id
--                ->  Seq Scan on bids  (cost=0.00..25.10 rows=1510 width=4) (actual time=0.004..0.015 rows=26 loops=1)
--  Planning time: 0.124 ms
--  Execution time: 0.078 ms
-- (10 rows)

SELECT DISTINCT name AS "Bid on Items"
  FROM items
  LEFT JOIN bids ON items.id = item_id
 WHERE item_id IS NOT NULL;

--                                                       QUERY PLAN                                                      
-- ---------------------------------------------------------------------------------------------------------------------
--  HashAggregate  (cost=62.62..64.62 rows=200 width=32) (actual time=0.129..0.132 rows=5 loops=1)
--    Group Key: items.name
--    ->  Hash Join  (cost=29.80..58.87 rows=1502 width=32) (actual time=0.076..0.112 rows=26 loops=1)
--          Hash Cond: (bids.item_id = items.id)
--          ->  Seq Scan on bids  (cost=0.00..25.10 rows=1502 width=4) (actual time=0.011..0.023 rows=26 loops=1)
--                Filter: (item_id IS NOT NULL)
--          ->  Hash  (cost=18.80..18.80 rows=880 width=36) (actual time=0.060..0.060 rows=6 loops=1)
--                Buckets: 1024  Batches: 1  Memory Usage: 9kB
--                ->  Seq Scan on items  (cost=0.00..18.80 rows=880 width=36) (actual time=0.005..0.009 rows=6 loops=1)
--  Planning time: 0.144 ms
--  Execution time: 0.163 ms
-- (11 rows)