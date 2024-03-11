#!/bin/bash

service mariadb start

echo "CREATE DATABASE $DB_NAME;" > init.sql
echo "CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';" >> init.sql
echo "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%';" >> init.sql
echo "FLUSH PRIVILEGES;" >> init.sql

mysql -u root < init.sql
