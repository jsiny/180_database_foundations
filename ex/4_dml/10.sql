DELETE FROM parts
 WHERE device_id = 1;

DELETE FROM devices
 WHERE name = 'Accelerometer';

-- Further Exploration --

/* We could have added an 'on delete cascade': */

CREATE TABLE parts (
  id            serial    PRIMARY KEY,
  part_number   integer   UNIQUE NOT NULL,
  device_id     integer   REFERENCES devices (id) ON DELETE CASCADE
);

/* The subsequent delete call would have been shorter:*/

DELETE FROM devices
 WHERE name = 'Accelerometer';