--NOT NULL, UNIQUE, DEFAULT ,CHECK
--app,script, developer 
--db constrains are much stronger

DROP TABLE IF EXISTS basics.accounts;
CREATE TABLE basics.accounts(
    id SERIAL PRIMARY KEY,
    full_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    is_active BOOLEAN DEFAULT TRUE,
    age INTEGER CHECK (age>=18),
    created_at TIMESTAMP DEFAULT NOW()

);

-- INSERT INTO basics.accounts(full_name, email, age)
-- VALUES 
-- ('benny', 'bennybenzigar@gmail.com', 24),
-- ('ben','bennybenzigarg@gmail.com',28),
-- ('libin','libin@gmail.com',28);

 
SELECT * FROM basics.accounts;