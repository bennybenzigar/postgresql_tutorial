-- limit how many rows you want to return
--offset how many rows you want to skip


-- SELECT name , price, description FROM products ORDER BY name ASC LIMIT 2;

-- SELECT name, price, stock FROM products ORDER BY name DESC LIMIt 3

-- offset 0 means we dont want to skip anything offset 5 means skip 5
--page 1 products

-- SELECT name , price, description, stock FROM  products ORDER BY price DESC LIMIT 5 OFFSET 0;

--page 2 products

-- SELECT name, price,description FROM products  ORDER BY name ASC LIMIT 2 OFFSET 5;

-- offset calculation
-- (page-1)*limit
--(2-1)*5-> 5
--(3-1)*5-> 10

SELECT name ,price,description FROM products ORDER BY id ASC LIMIT 2 OFFSET 8