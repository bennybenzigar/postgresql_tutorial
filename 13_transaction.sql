--multiple sql statements run as one sage unit
--placing an order,
--reduce the stock of that porducy
--creating payment records,
--transfering money
--creating user recored with related profile data
-- It runs multiple SQL statements as one logical unit of work.

BEGIN ;
UPDATE posts 
SET status='published' 
WHERE title ='Angular' 
AND status='draft';

UPDATE posts 
SET views=views+50 WHERE title ='Angular' ;

SELECT
title,
status,
views
FROM posts WHERE title='Angular';

COMMIT;

-- What if an error occurs?
-- Use ROLLBACK instead of COMMIT if you decide to cancel the changes:

--ROLLBACK;  -- Cancel the update