-- Create the hbtn_0d_usa database if it doesn't exist
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;

-- Use the hbtn_0d_usa database
USE hbtn_0d_usa;

-- Create the states table if it doesn't exist
CREATE TABLE IF NOT EXISTS states (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(256) NOT NULL
);

-- Create the cities table if it doesn't exist
CREATE TABLE IF NOT EXISTS cities (
    id INT PRIMARY KEY AUTO_INCREMENT,
    state_id INT NOT NULL,
    name VARCHAR(256) NOT NULL,
    FOREIGN KEY (state_id) REFERENCES states(id)
);

-- Insert sample data into the states table if it doesn't exist
INSERT IGNORE INTO states (name) VALUES
    ('California'),
    ('Arizona'),
    ('Texas');

-- Insert sample data into the cities table if it doesn't exist
INSERT IGNORE INTO cities (state_id, name) VALUES
    (1, 'San Francisco'),
    (1, 'San Diego'),
    (1, 'San Jose');

-- List all the cities of California using a subquery
SELECT * FROM cities
WHERE state_id = (SELECT id FROM states WHERE name = 'California');