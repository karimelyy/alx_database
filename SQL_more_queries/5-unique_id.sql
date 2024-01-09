-- Create table unique_id if not exists
CREATE TABLE IF NOT EXISTS unique_id (
    id INT DEFAULT 1 UNIQUE,
    name VARCHAR(256)
);

-- Attempt to insert a record with a duplicate id
INSERT INTO unique_id (id, name) VALUES
    (1, 'Holberton')
    ON DUPLICATE KEY UPDATE id = id;

-- Use a placeholder table to display the data
CREATE TABLE display_data AS SELECT * FROM unique_id;

-- Drop the original table
DROP TABLE unique_id;

-- Rename the placeholder table to the original table name
ALTER TABLE display_data RENAME TO unique_id;
