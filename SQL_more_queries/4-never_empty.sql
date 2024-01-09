-- Drop table id_not_null if it exists
DROP TABLE IF EXISTS id_not_null;

-- Create table id_not_null
CREATE TABLE id_not_null (
    id INT DEFAULT 1,
    name VARCHAR(256)
);