-- Create table unique_id if not exists
CREATE TABLE IF NOT EXISTS unique_id (
    id INT DEFAULT 1 UNIQUE,
    name VARCHAR(256)
);

-- Attempt to insert a record with a duplicate id
-- This will fail silently due to the unique constraint, and no error will be displayed
INSERT INTO unique_id (id, name) VALUES
    (1, 'Holberton')
    ON DUPLICATE KEY UPDATE id = VALUES(id);

-- Use a placeholder table to display the data
CREATE TABLE display_data AS SELECT * FROM unique_id WHERE id = 1;

-- Drop the original table
DROP TABLE unique_id;

-- Rename the placeholder table to the original table name
ALTER TABLE display_data RENAME TO unique_id;