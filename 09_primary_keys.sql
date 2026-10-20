DROP TABLE IF EXISTS basics.sales;

CREATE TABLE basics.sales(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
   price NUMERIC(10,2) NOT NULL DEFAULT 0,
   created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO basics.sales(title, price)
VALUES 
('sale 1', 100),
('sale 2', 200);


INSERT INTO basics.sales(id,title, price)
VALUES 
(1,'duplciate  1', 100),
(2,'sale 2', 200);
SELECT * FROM basics.sales ;
