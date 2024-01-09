-- Attempt to create table unique_id if not exists
CREATE TABLE IF NOT EXISTS unique_id (
    id INT DEFAULT 1 UNIQUE,
    name VARCHAR(256)
);

-- Attempt to insert a record with a duplicate id
-- This will fail silently due to the unique constraint, and no error will be displayed
INSERT INTO unique_id (id, name) VALUES
    (89, 'Holberton School')
    ON DUPLICATE KEY UPDATE id = VALUES(id);

-- Attempt to insert a record with a duplicate id
-- This should display an error message due to the unique constraint
INSERT INTO unique_id (id, name) VALUES
    (89, 'Holberton');

-- Uncomment the following line to display the contents of the unique_id table
-- SELECT * FROM unique_id;