SELECT part_number, device_id
  FROM parts
 WHERE device_id IS NOT NULL
 ORDER BY device_id, part_number;

 SELECT part_number, device_id
  FROM parts
 WHERE device_id IS NULL
 ORDER BY part_number;