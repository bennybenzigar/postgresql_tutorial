SELECT name, price, description, sku FROM products  WHERE sku ='LAP-002'  ORDER BY name ;

-- update to which table   set which value you want to set and where you want to update
UPDATE products SET price =1400,
 stock=121  WHERE  sku='LAP-002';

 SELECT name, price, description, sku FROM products   WHERE sku ='LAP-002'  ORDER BY name ;
