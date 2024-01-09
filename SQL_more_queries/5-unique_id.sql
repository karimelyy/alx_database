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
-- This will fail silently due to the constraint, and no error will be displayed
INSERT INTO unique_id (id, name) VALUES
    (1, 'Holberton');

-- Insert more records to demonstrate regular inserts
INSERT INTO unique_id (name) VALUES
    ('Some Record 1'),
    ('Some Record 2');