-- to run
-- psql -U postgres -d postgres -f part1/01_first_database.sql
-- psql
-- PostgreSQL command-line client used to connect to a database and execute SQL commands.
-- -U postgres
-- Connect using the PostgreSQL username postgres.
-- -d postgres
-- Connect to the database named postgres. This is commonly created as a default administrative database.
-- -f part1/01_first_database.sql
-- Read and execute SQL statements from the specified file.
--you should never do it in product this is only for learning
DROP DATABASE IF EXISTS postgresql_part1;

--create new db inside your postgre server

CREATE DATABASE postgresql_part1;
-- psql -U  postgres -d postgresql_part1
-- SELECT current_database();
--SELECT current_user;
--SELECT version();
-- \l   -for seeing all database
-- \dt tabename.* - for all tables
--exit  or \q