DROP TABLE IF EXISTS basics.products_basics;

CREATE TABLE basics.products_basics(

    id SERIAL PRIMARY KEY ,
    --  string that have a max length 100 - need to enforce length
    name VARCHAR(100) NOT NULL,
    description TEXT,
    -- using integer 1,2,3 not1.1
    stock INTEGER DEFAULT 0,
    -- larger ehole number than integer
    total_views BIGINT DEFAULT 0,
    -- when you want to take exact decimal values
    --10 means total digits
    -- 2 means digits after the decimal point, 999999999.99
    price NUMERIC(10,2),

    is_active BOOLEAN DEFAULT TRUE
);

--queries
 INSERT INTO basics.products_basics(name,description,stock, total_views,price, is_active)
 VALUES
 ('chair','4 legs wooden',10, 14440, 400.86, FALSE),
 ('Table','6 legs glass top',10, 14440, 6000.86, FALSE);

SELECT * FROM basics.products_basics;
SELECT id, name,price , is_active FROM basics.products_basics WHERE is_active= TRUE;