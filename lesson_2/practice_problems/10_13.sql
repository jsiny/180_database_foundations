ALTER TABLE films
  ADD CONSTRAINT director_name
CHECK (length(director) >= 3
  AND director LIKE '% %');