INSERT INTO products(name, category, price, stock, sku, description)
VALUES ('pen', 'stationary', 10, 100, 'STA-006',null);

SELECT * FROM products WHERE sku ='STA-006';