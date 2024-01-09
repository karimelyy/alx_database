-- Attempt to create database hbtn_0d_usa if not exists
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;

-- Use the hbtn_0d_usa database
USE hbtn_0d_usa;

-- Attempt to create table states if not exists
CREATE TABLE IF NOT EXISTS states (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(256) NOT NULL
);

-- Attempt to insert records into the states table
INSERT INTO states (name) VALUES
    ('California'),
    ('Arizona'),
    ('Texas');

-- Uncomment the following line to display the contents of the states table
-- SELECT * FROM states;
