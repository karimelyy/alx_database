-- Connect to MySQL server
mysql -hlocalhost -uroot -p <<EOF

-- Create user user_0d_1 if not exists
CREATE USER IF NOT EXISTS 'user_0d_1'@'localhost';

-- Grant all privileges to user_0d_1
GRANT ALL PRIVILEGES ON *.* TO 'user_0d_1'@'localhost';

-- Create user user_0d_2 if not exists
CREATE USER IF NOT EXISTS 'user_0d_2'@'localhost';

-- Grant all privileges to user_0d_2
GRANT ALL PRIVILEGES ON *.* TO 'user_0d_2'@'localhost';

-- Display privileges for user_0d_1
SHOW GRANTS FOR 'user_0d_1'@'localhost';

-- Display privileges for user_0d_2
SHOW GRANTS FOR 'user_0d_2'@'localhost';

EOF