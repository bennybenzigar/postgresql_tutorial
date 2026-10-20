--returning usually retuns back the rows immidetley after insert
-- DELETE FROM products WHERE sku='ELE-006';
-- INSERT INTO products(name, category, price,stock,sku,description )
-- VALUES ('webcam', 'electronics', 1200, 200, 'ELE-006','des')
-- RETURNING id,name,category,price ,stock, created_at

UPDATE products SET stock=stock+10 WHERE sku='ELE-006';
RETURNING id,name,category,sku

-- DELETE FROM products
-- WHERE sku='ELEC-WEB-009'
-- RETURNING id,name, sku;

