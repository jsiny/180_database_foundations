SELECT "when", duration, first_name
  FROM calls
  JOIN contacts
    ON calls.contact_id = contacts.id
 WHERE contacts.id != 6;

-- Other WHERE clause:

SELECT "when", duration, first_name
  FROM calls
  JOIN contacts
    ON calls.contact_id = contacts.id
 WHERE (first_name || ' ' || last_name) != 'William Swift';