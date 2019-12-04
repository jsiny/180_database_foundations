SELECT b.id, b.author, string_agg(c.name, ', ') AS categories
  FROM books            AS b
  JOIN books_categories AS bc   ON b.id = bc.book_id
  JOIN categories       AS c    ON bc.category_id = c.id
 GROUP BY b.id
 ORDER BY b.id;