ALTER TABLE stars
ALTER COLUMN name TYPE varchar(50);

-- Further Exploration --

/* When changing the data type from varchar(25) to varchar(50), no error is
thrown, as Alpha Centauri B is still within the accepted range (less than 50
chars).
An error would have been thrown if we had instead reduced the length to 10 chars
*/

ALTER TABLE stars
ALTER COLUMN name TYPE varchar(10);
-- ERROR:  value too long for type character varying(10)