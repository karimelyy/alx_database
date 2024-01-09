-- Ensure hbtn_0d_usa database exists or create it
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;

-- Use the hbtn_0d_usa database
USE hbtn_0d_usa;

-- Create the 'cities' table
CREATE TABLE IF NOT EXISTS cities (
    id INT AUTO_INCREMENT PRIMARY KEY,
    state_id INT NOT NULL,
    name VARCHAR(256) NOT NULL,
    FOREIGN KEY (state_id) REFERENCES states(id)
);

-- Insert some data into the 'cities' table for testing
INSERT INTO cities (state_id, name) VALUES
    (1, 'San Francisco'),
    (1, 'San Jose'),
    (2, 'Page'),
    (3, 'Paris'),
    (3, 'Houston'),
    (3, 'Dallas');