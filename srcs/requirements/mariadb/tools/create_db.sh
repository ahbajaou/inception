#!/bin/sh


 mysql service start

sleep 6

echo "CREATE DATABASE IF NOT EXISTS $data_name ;" > db1.sql
echo "CREATE USER IF NOT EXISTS '$data_user'@'%' IDENTIFIED BY '$data_pwd' ;" >> db1.sql
echo "GRANT ALL PRIVILEGES ON $data_name.* TO '$data_user'@'%' ;" >> db1.sql
echo "FLUSH PRIVILEGES;" >> db1.sql

mysql < db1.sql

mysqld