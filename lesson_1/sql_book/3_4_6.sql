ALTER TABLE celebrities
RENAME TO singers;

SELECT * FROM singers
WHERE occupation NOT LIKE '%singer%';

DELETE FROM singers
WHERE occupation NOT LIKE '%singer%';