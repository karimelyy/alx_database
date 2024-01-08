-- Drop table force_name if it exists
DROP TABLE IF EXISTS force_name;

-- Create table force_name if not exists
CREATE TABLE IF NOT EXISTS force_name (
    id INT,
    name VARCHAR(256) NOT NULL
);

-- Insert a record into force_name
INSERT INTO force_name (name) VALUES
    ('Holberton School'),
    ('Python is cool'),
    ('Holberton'),
    ('School'),
    ('C is fun');
