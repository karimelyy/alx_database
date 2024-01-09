-- Drop table id_not_null if it exists
DROP TABLE IF EXISTS id_not_null;

-- Create table id_not_null
CREATE TABLE id_not_null (
    id INT DEFAULT 1,
    name VARCHAR(256)
);

-- Insert records into id_not_null
INSERT INTO id_not_null (name) VALUES
    ('Holberton School'),
    ('Python is cool'),
    ('Holberton'),
    ('School'),
    ('C is fun');

-- Insert another record without specifying id
INSERT INTO id_not_null (name) VALUES ('Another record');