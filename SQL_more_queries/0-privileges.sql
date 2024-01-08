# Create user user_0d_1 if not exists
echo "CREATE USER IF NOT EXISTS 'user_0d_1'@'localhost';" | mysql -hlocalhost -uroot -p

# Grant all privileges to user_0d_1
echo "GRANT ALL PRIVILEGES ON *.* TO 'user_0d_1'@'localhost';" | mysql -hlocalhost -uroot -p

# Create user user_0d_2 if not exists
echo "CREATE USER IF NOT EXISTS 'user_0d_2'@'localhost';" | mysql -hlocalhost -uroot -p

# Grant all privileges to user_0d_2
echo "GRANT ALL PRIVILEGES ON *.* TO 'user_0d_2'@'localhost';" | mysql -hlocalhost -uroot -p

# Display privileges for both users
echo "SHOW GRANTS FOR 'user_0d_1'@'localhost';" | mysql -hlocalhost -uroot -p
echo "SHOW GRANTS FOR 'user_0d_2'@'localhost';" | mysql -hlocalhost -uroot -p