SELECT name, 
       count(book_id)            AS book_count,
       string_agg(title, (', ')) AS book_titles
  FROM books_categories          AS bc
  JOIN books                     AS b     ON bc.book_id = b.id
  JOIN categories                AS c     ON bc.category_id = c.id
 GROUP BY c.name
 ORDER BY c.name;