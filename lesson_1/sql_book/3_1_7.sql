ALTER TABLE celebrities
  ALTER COLUMN last_name DROP NOT NULL;

INSERT INTO celebrities (first_name, occupation, date_of_birth, deceased)
  VALUES ('Madonna', 'singer, actress', '19580816', DEFAULT),
         ('Prince', 'singer, songwriter, musician, actor', '19580607', true);
