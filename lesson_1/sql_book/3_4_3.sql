ALTER TABLE countries
ADD COLUMN continent varchar(50);

UPDATE countries SET continent = 'Europe';
UPDATE countries SET continent = 'Asia' WHERE name='Japan';
UPDATE countries SET continent = 'North America' WHERE name='USA';