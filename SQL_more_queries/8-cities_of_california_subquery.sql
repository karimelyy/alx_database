-- Ensure hbtn_0d_usa database exists or create it
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;

-- Use the hbtn_0d_usa database
USE hbtn_0d_usa;

-- List all the cities of California using a subquery
SELECT * FROM cities
WHERE state_id = (SELECT id FROM states WHERE name = 'California')
ORDER BY id;