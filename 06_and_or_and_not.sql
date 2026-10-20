--AND -> every condition must be TRUE;
--OR -> atleast one condition must be TRUE;
--NOT -> reverse/exclude a condtion;

--products where it i Furniture but price >1000

-- SELECT name, category, price FROM products WHERE category='Furniture' AND price>2000;

-- SELECT name, category, price FROM products WHERE category='Furniture' OR category='gadget';

-- SELECT name, category, price FROM products WHERE NOT category='Furniture';

-- SELECT name,category,price, stock  FROM products WHERE (category= 'gadget' OR category='Furniture') AND stock>1;


SELECT  name, price, stock,  stock, is_active FROM products
WHERE is_active=TRUE AND (price <1000 OR stock >=100);