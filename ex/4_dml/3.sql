SELECT name, part_number
  FROM parts
 INNER JOIN devices
    ON parts.device_id = devices.id;