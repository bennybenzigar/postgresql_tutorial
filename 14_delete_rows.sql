-- INSERT INTO products(name,category, price,stock, sku,description)
-- VALUES ('tempt product to be deleted','gadget',123,123,'ELE-123','desc');

-- SELECT  name, category,sku FROM products WHERE sku='ELE-123';

DELETE FROM products WHERE  sku='ELE-123';
SELECT  name, category,sku FROM products WHERE sku='ELE-123';