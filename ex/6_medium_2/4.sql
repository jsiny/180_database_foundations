SELECT name FROM bidders
WHERE EXISTS (SELECT 1 FROM bids
                       WHERE bidder_id = bidders.id);

--                                                      QUERY PLAN                                                      
-- ---------------------------------------------------------------------------------------------------------------------
--  Hash Join  (cost=33.38..66.47 rows=635 width=32) (actual time=0.057..0.066 rows=6 loops=1)
--    Hash Cond: (bidders.id = bids.bidder_id)
--    ->  Seq Scan on bidders  (cost=0.00..22.70 rows=1270 width=36) (actual time=0.010..0.013 rows=7 loops=1)
--    ->  Hash  (cost=30.88..30.88 rows=200 width=4) (actual time=0.042..0.043 rows=6 loops=1)
--          Buckets: 1024  Batches: 1  Memory Usage: 9kB
--          ->  HashAggregate  (cost=28.88..30.88 rows=200 width=4) (actual time=0.034..0.038 rows=6 loops=1)
--                Group Key: bids.bidder_id
--                ->  Seq Scan on bids  (cost=0.00..25.10 rows=1510 width=4) (actual time=0.006..0.017 rows=26 loops=1)
--  Planning time: 0.137 ms
--  Execution time: 0.096 ms
-- (10 rows)

SELECT DISTINCT name
  FROM bidders
  JOIN bids ON bidders.id = bidder_id;

--                                                        QUERY PLAN                                                       
-- ------------------------------------------------------------------------------------------------------------------------
--  HashAggregate  (cost=71.42..73.42 rows=200 width=32) (actual time=0.117..0.120 rows=6 loops=1)
--    Group Key: bidders.name
--    ->  Hash Join  (cost=38.58..67.65 rows=1510 width=32) (actual time=0.064..0.099 rows=26 loops=1)
--          Hash Cond: (bids.bidder_id = bidders.id)
--          ->  Seq Scan on bids  (cost=0.00..25.10 rows=1510 width=4) (actual time=0.010..0.021 rows=26 loops=1)
--          ->  Hash  (cost=22.70..22.70 rows=1270 width=36) (actual time=0.049..0.049 rows=7 loops=1)
--                Buckets: 2048  Batches: 1  Memory Usage: 17kB
--                ->  Seq Scan on bidders  (cost=0.00..22.70 rows=1270 width=36) (actual time=0.005..0.010 rows=7 loops=1)
--  Planning time: 0.134 ms
--  Execution time: 0.151 ms
-- (10 rows)