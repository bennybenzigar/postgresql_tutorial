--null -missing/unknown value
-- u should not check null using = null
--IS NULL
--IS NOT NULL

-- SELECT name description FROM products WHERE description IS NULL

SELECT name, price, description FROM products WHERE description IS NOT NULL