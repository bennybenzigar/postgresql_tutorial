--/products?category=electronics


-- SELECT name, category, price , stock FROM products WHERE category='Furniture'

-- find products where price  greater than 1000

-- SELECT name, price, stock FROM products WHERE price >1000;

--find products which are not active 

SELECT name, is_active  FROM products WHERE is_active=FALSE;