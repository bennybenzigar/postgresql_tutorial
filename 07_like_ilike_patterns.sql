-- like - case sensitive pattern match
--ilike -case insensitive pattern match
-- % means any no of characters
--exactly one character


-- % after laptop means anything can come after it
-- SELECT name, price FROM products WHERE name LIKE 'laptop%';

-- desk,DESK

-- SELECT name , price FROM products WHERE name ILIKE '%stand%';

-- checking in multiple columns

-- SELECT name,category,description FROM products where name ILIKE '%stand%' OR description ILIKE '%stand%';