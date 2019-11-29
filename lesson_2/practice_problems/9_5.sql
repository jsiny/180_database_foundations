SELECT date, round((high + low) / 2.0, 1) AS average
  FROM temperatures
 WHERE date BETWEEN '2016-03-02' AND '2016-03-08';