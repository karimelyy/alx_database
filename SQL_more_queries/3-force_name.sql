-- Drop table force_name if it exists
DROP TABLE IF EXISTS force_name;

-- Create table force_name
CREATE TABLE force_name (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(256) NOT NULL
);

-- Insert records into force_name
INSERT INTO force_name (name) VALUES
    ('Holberton School'),
    ('Python is cool'),
    ('Holberton'),
    ('School'),
    ('C is fun');