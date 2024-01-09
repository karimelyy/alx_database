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

-- Drop the original table (if it exists)
DROP TABLE IF EXISTS unique_id;

-- Rename a non-existing table to the original table name
CREATE TABLE non_existing_table;

-- Rename the non-existing table to the original table name
ALTER TABLE non_existing_table RENAME TO unique_id;