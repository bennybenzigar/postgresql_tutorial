-- SELECT name,category, price,stock, sku FROM products WHERE category = 'gadget' ORDER BY name ASC;

-- pice 10% 
-- UPDATE products SET  price= ROUND(price*1.10, 2)
-- WHERE category='gadget';

-- SELECT name,category, price,stock, sku FROM products WHERE category = 'gadget' ORDER BY name ASC;

UPDATE products SET is_active=FALSE WHERE stock=0;
SELECT name , stock ,is_active FROM products WHERE is_active= FALSE;

