-- Drop table unique_id if it exists
DROP TABLE IF EXISTS unique_id;

-- Create table unique_id
CREATE TABLE unique_id (
    id INT DEFAULT 1,
    name VARCHAR(256)
);