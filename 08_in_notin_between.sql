--IN- >Value must match one item from the list
--NOT IN-> value must not match any time from the list
--BETWEEN -> valye must be inside  a range

-- return products that are electronics and furniture
-- SELECT name, category, price FROM products WHERE category IN ('Electronics', 'Furniture');


-- returns products that are not electronics and furniture

-- SELECT name,category, price FROM products WHERE category NOT IN('Furniture','Electronics');

-- give me all the price between 1000 and 4000

-- SELECT name, price FROM products WHERE price BETWEEN  2000  AND 4000;

SELECT name,category  from products WHERE category IN ('Furniture') AND price BETWEEN 200 AND 9000