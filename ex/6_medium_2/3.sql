SELECT name AS "Not Bid On" FROM items
WHERE id NOT IN (SELECT item_id FROM bids);

--                                                 QUERY PLAN                                                 
-- -----------------------------------------------------------------------------------------------------------
--  Seq Scan on items  (cost=28.88..49.88 rows=440 width=32) (actual time=0.041..0.042 rows=1 loops=1)
--    Filter: (NOT (hashed SubPlan 1))
--    Rows Removed by Filter: 5
--    SubPlan 1
--      ->  Seq Scan on bids  (cost=0.00..25.10 rows=1510 width=4) (actual time=0.005..0.015 rows=26 loops=1)
--  Planning time: 0.080 ms
--  Execution time: 0.062 ms
-- (7 rows)

SELECT DISTINCT name AS "Not Bid On"
  FROM items
  LEFT JOIN bids ON items.id = item_id
 WHERE item_id IS NULL;

--                                                      QUERY PLAN                                                      
-- ---------------------------------------------------------------------------------------------------------------------
--  HashAggregate  (cost=107.93..109.93 rows=200 width=32) (actual time=0.072..0.073 rows=1 loops=1)
--    Group Key: items.name
--    ->  Hash Anti Join  (cost=43.98..106.83 rows=440 width=32) (actual time=0.067..0.069 rows=1 loops=1)
--          Hash Cond: (items.id = bids.item_id)
--          ->  Seq Scan on items  (cost=0.00..18.80 rows=880 width=36) (actual time=0.010..0.014 rows=6 loops=1)
--          ->  Hash  (cost=25.10..25.10 rows=1510 width=4) (actual time=0.045..0.046 rows=26 loops=1)
--                Buckets: 2048  Batches: 1  Memory Usage: 17kB
--                ->  Seq Scan on bids  (cost=0.00..25.10 rows=1510 width=4) (actual time=0.006..0.019 rows=26 loops=1)
--  Planning time: 0.132 ms
--  Execution time: 0.106 ms
-- (10 rows)