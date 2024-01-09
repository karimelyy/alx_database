-- Drop table unique_id if it exists
DROP TABLE IF EXISTS unique_id;

-- Create table unique_id
CREATE TABLE unique_id (
    id INT DEFAULT 1,
    name VARCHAR(256)
);

-- Insert records into unique_id
INSERT INTO unique_id (name) VALUES
    ('Holberton School');

-- Insert another record without specifying id
INSERT INTO unique_id (name) VALUES ('Another record');

-- Attempt to insert a record with a duplicate id
INSERT INTO unique_id (id, name) VALUES
    (1, 'Holberton');

-- Use a placeholder table to display the data
CREATE TABLE display_data AS SELECT * FROM unique_id;

-- Drop the original table
DROP TABLE unique_id;

-- Rename the placeholder table to the original table name
ALTER TABLE display_data RENAME TO unique_id;