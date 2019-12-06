SELECT name,
       (SELECT count(id)
          FROM bids
         WHERE item_id = items.id)
  FROM items;

--                                                  QUERY PLAN                                                  
-- -------------------------------------------------------------------------------------------------------------
--  Seq Scan on items  (cost=0.00..25455.20 rows=880 width=40) (actual time=0.027..0.087 rows=6 loops=1)
--    SubPlan 1
--      ->  Aggregate  (cost=28.89..28.91 rows=1 width=8) (actual time=0.011..0.011 rows=1 loops=6)
--            ->  Seq Scan on bids  (cost=0.00..28.88 rows=8 width=4) (actual time=0.003..0.005 rows=4 loops=6)
--                  Filter: (item_id = items.id)
--                  Rows Removed by Filter: 22
--  Planning time: 0.100 ms
--  Execution time: 0.116 ms
-- (8 rows)

SELECT name, count(item_id)
  FROM items
  LEFT JOIN bids ON items.id = item_id
 GROUP BY name;

--                                                      QUERY PLAN                                                      
-- ---------------------------------------------------------------------------------------------------------------------
--  HashAggregate  (cost=66.44..68.44 rows=200 width=40) (actual time=0.122..0.125 rows=6 loops=1)
--    Group Key: items.name
--    ->  Hash Right Join  (cost=29.80..58.89 rows=1510 width=36) (actual time=0.065..0.102 rows=27 loops=1)
--          Hash Cond: (bids.item_id = items.id)
--          ->  Seq Scan on bids  (cost=0.00..25.10 rows=1510 width=4) (actual time=0.005..0.016 rows=26 loops=1)
--          ->  Hash  (cost=18.80..18.80 rows=880 width=36) (actual time=0.055..0.055 rows=6 loops=1)
--                Buckets: 1024  Batches: 1  Memory Usage: 9kB
--                ->  Seq Scan on items  (cost=0.00..18.80 rows=880 width=36) (actual time=0.011..0.015 rows=6 loops=1)
--  Planning time: 0.129 ms
--  Execution time: 0.164 ms
-- (10 rows)