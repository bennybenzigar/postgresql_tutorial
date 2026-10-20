DROP TABLE IF EXISTS basics.students;

CREATE TABLE basics.students(
    --create an auto incerementing integer
    -- 1, 2,3,4,5, and so on
    --  primat key simpley means this col uiniquely identifies each
    id SERIAL PRIMARY KEY,

    --text represent string data
    -- not null means this col is required
    --postgres is going to reject if this name value is not present
    name TEXT NOT NULL,
    
    -- unique mean no one have same email
    email TEXT NOT NULL UNIQUE,

-- check age greater than 18
    age INTEGER CHECK(age >= 18),
    -- Timestamp -> store date and time format. 
    --defaykt means if you dont provide anny value it will take by deafault

    created_at TIMESTAMP DEFAULT NOW()
);

--insert some data

INSERT INTO basics.students (name, email, age)
VALUES
 ('Benny', 'bennybenzigar@gmail.com', 29),
 ('Alex', 'alex@gmail.com', 20);

 SELECT FROM basics.students;