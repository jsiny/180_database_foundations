UPDATE parts
   SET device_id = 1
 WHERE part_number IN ('5', '29');

-- Further Exploration --

UPDATE parts
   SET device_id = 1
 WHERE part_number = (SELECT MIN(part_number)
                        FROM parts);