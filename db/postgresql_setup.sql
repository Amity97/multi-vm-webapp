-- PostgreSQL Setup Script for Multi-VM Deployment Project

-- 1. Create a new database user for the web application
CREATE USER webapp_user WITH PASSWORD 'secure_password';

-- 2. Create a new database for the web application
CREATE DATABASE webapp_db;

-- 3. Grant all privileges on the database to the web application user
GRANT ALL PRIVILEGES ON DATABASE webapp_db TO webapp_user;

-- 4. Ensure the user can create tables and modify the schema
ALTER USER webapp_user CREATEDB;

-- 5. Optionally, create a sample table (you can customize this based on your application)
CREATE TABLE IF NOT EXISTS sample_table (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT
);

-- 6. Insert a test record into the sample_table
INSERT INTO sample_table (name, description) VALUES ('Test Record', 'This is a sample record for testing.');

-- The database is now ready for the web application to connect.

