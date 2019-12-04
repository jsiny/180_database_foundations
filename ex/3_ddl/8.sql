ALTER TABLE planets
  ADD COLUMN semi_major_axis numeric NOT NULL;

-- Further Exploration --

/* The above SQL statement generates an error when the table isn't empty:

ERROR:  column "semi_major_axis" contains null values

The solution is to first add the values to that column and afterwards, add the
NOT NULL constraint.*/

ALTER TABLE planets
  ADD COLUMN semi_major_axis numeric;

UPDATE planets
   SET semi_major_axis = 0.04
 WHERE id = 1;

UPDATE planets
   SET semi_major_axis = 40
 WHERE id = 3;

ALTER TABLE planets
ALTER COLUMN semi_major_axis
  SET NOT NULL;