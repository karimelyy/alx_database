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
    ('School'),
    ('Holberton'),
    ('C is fun');

-- Insert another record without specifying id
INSERT INTO id_not_null (name) VALUES ('Another record');

-- Use a placeholder table to display the data
CREATE TABLE display_data AS SELECT * FROM id_not_null;

-- Drop the original table
DROP TABLE id_not_null;

-- Rename the placeholder table to the original table name
ALTER TABLE display_data RENAME TO id_not_null;