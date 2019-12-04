ALTER TABLE stars
  ADD CHECK (spectral_type ~ '[OBAFGKM]'),
ALTER COLUMN spectral_type SET NOT NULL;

-- Further Exploration -- 

/* The above SQL statement conflicts with two rows previously added to the
table:

ERROR:  column "spectral_type" contains null values
ERROR:  check constraint "stars_spectral_type_check" is violated by some row

Before adding these constraints, one must remove the problematic rows */

DELETE FROM stars
 WHERE spectral_type ~ '[^OBAFGKM]'
    OR spectral_type IS NULL;

