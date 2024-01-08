-- Create table force_name if not exists
CREATE TABLE IF NOT EXISTS force_name (
    id INT,
    name VARCHAR(256) NOT NULL
);

-- Insert a record into force_name
INSERT INTO force_name (id, name) VALUES (89, 'Holberton School');