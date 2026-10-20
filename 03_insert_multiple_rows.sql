
--  IN  to check multiple cases
INSERT INTO products (name, category, price, stock, sku, description)
VALUES
('laptop stand 1', 'gadget', 1220, 100, 'LAP-001', 'desc 1'),
('laptop stand 2', 'gadget', 1220, 100, 'LAP-002', 'desc 2'),
('laptop stand 3', 'gadget', 1220, 100, 'LAP-003', 'desc 3');


SELECT name, category, price, stock, sku, description
FROM products WHERE sku IN ('LAP-001', 'LAP-002')