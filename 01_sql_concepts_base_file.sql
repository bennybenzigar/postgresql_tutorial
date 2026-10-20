
-- Enable UUID generation
CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- Drop the existing table if it exists
DROP TABLE IF EXISTS products;

-- Create products table
CREATE TABLE products (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL,
    category TEXT NOT NULL,
    price NUMERIC(10,2) NOT NULL CHECK (price >= 0),
    stock INTEGER NOT NULL DEFAULT 0 CHECK (stock >= 0),
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    sku TEXT UNIQUE,
    description TEXT,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

-- Insert sample products
INSERT INTO products
    (name, category, price, stock, is_active, sku, description)
VALUES
    ('Office Chair', 'Furniture', 4500.00, 25, TRUE, 'FUR-001',
     'Ergonomic office chair with adjustable height'),

    ('Wooden Table', 'Furniture', 8500.50, 10, TRUE, 'FUR-002',
     'Solid wooden table for office use'),

    ('Wireless Mouse', 'Electronics', 799.00, 50, TRUE, 'ELE-001',
     'Wireless mouse with USB receiver'),

    ('Mechanical Keyboard', 'Electronics', 2499.00, 15, TRUE, 'ELE-002',
     'Mechanical keyboard with RGB lighting'),

    ('Notebook', 'Stationery', 80.00, 100, TRUE, 'STA-001',
     'A5 ruled notebook'),

    ('Old Monitor', 'Electronics', 0.00, 0, FALSE, 'ELE-003',
     'Discontinued monitor');

-- Display all products
SELECT * FROM products;
