-- Create table id_not_null if not exists
CREATE TABLE IF NOT EXISTS id_not_null (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(256)
);

-- Insert records into id_not_null
INSERT INTO id_not_null (name) VALUES
    ('Holberton School'),
    ('Python is cool'),
    ('Holberton'),
    ('School'),
    ('C is fun');