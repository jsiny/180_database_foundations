SELECT max(bid_counts.count) 
  FROM (SELECT count(bids.id)
          FROM bids
         GROUP BY bidder_id)
  AS bid_counts;

--                                                   QUERY PLAN                                                   
-- ---------------------------------------------------------------------------------------------------------------
--  Aggregate  (cost=37.15..37.16 rows=1 width=8) (actual time=0.048..0.049 rows=1 loops=1)
--    ->  HashAggregate  (cost=32.65..34.65 rows=200 width=12) (actual time=0.040..0.043 rows=6 loops=1)
--          Group Key: bids.bidder_id
--          ->  Seq Scan on bids  (cost=0.00..25.10 rows=1510 width=8) (actual time=0.010..0.021 rows=26 loops=1)
--  Planning time: 0.088 ms
--  Execution time: 0.080 ms
-- (6 rows)

SELECT COUNT(bidder_id) AS max_bid FROM bids
 GROUP BY bidder_id
 ORDER BY max_bid DESC
 LIMIT 1;

--                                                      QUERY PLAN                                                      
-- ---------------------------------------------------------------------------------------------------------------------
--  Limit  (cost=35.65..35.65 rows=1 width=12) (actual time=0.052..0.055 rows=1 loops=1)
--    ->  Sort  (cost=35.65..36.15 rows=200 width=12) (actual time=0.050..0.051 rows=1 loops=1)
--          Sort Key: (count(bidder_id)) DESC
--          Sort Method: top-N heapsort  Memory: 25kB
--          ->  HashAggregate  (cost=32.65..34.65 rows=200 width=12) (actual time=0.039..0.043 rows=6 loops=1)
--                Group Key: bidder_id
--                ->  Seq Scan on bids  (cost=0.00..25.10 rows=1510 width=4) (actual time=0.009..0.021 rows=26 loops=1)
--  Planning time: 0.092 ms
--  Execution time: 0.082 ms
-- (9 rows)