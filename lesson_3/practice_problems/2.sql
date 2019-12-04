ALTER TABLE books
ALTER COLUMN title TYPE text;

INSERT INTO books (title, author)
VALUES ('Sally Ride: America''s First Woman in Space', 'Lynn Sherr'),
       ('Jane Eyre', 'Charlotte Brontë'),
       ('Vij''s: Elegant and Inspired Indian Cuisine', 'Meeru Dhalwala and Vikram Vij');

INSERT INTO categories (name)
VALUES ('Space Exploration'),
       ('Cookbook'),
       ('South Asia');

INSERT INTO books_categories
VALUES (4, 5),
       (4, 1),
       (4, 7),
       (5, 2),
       (5, 4),
       (6, 8),
       (6, 1),
       (6, 9);

SELECT b.id, b.author, string_agg(c.name, ', ') AS categories
  FROM books            AS b
  JOIN books_categories AS bc   ON b.id = bc.book_id
  JOIN categories       AS c    ON bc.category_id = c.id
 GROUP BY b.id
 ORDER BY b.id
OFFSET 3;

 id |            author             |                categories                
----+-------------------------------+------------------------------------------
  4 | Lynn Sherr                    | Biography, Nonfiction, Space Exploration
  5 | Charlotte Brontë              | Fiction, Classics
  6 | Meeru Dhalwala and Vikram Vij | Cookbook, Nonfiction, South Asia