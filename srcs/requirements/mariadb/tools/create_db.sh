#!/bin/bash

service mariadb start

mysql_secure_installation << EOF
$root_pass
n
n
Y
Y
Y
EOF

mariadb -e "CREATE DATABASE IF NOT EXISTS ${data_name} ;"
mariadb -e "CREATE USER IF NOT EXISTS '${data_user}'@'%' IDENTIFIED BY '${data_pwd}' ;"
mariadb -e "GRANT ALL PRIVILEGES ON ${data_name}.* TO '${data_user}'@'%' ;"
mariadb -e "FLUSH PRIVILEGES;"
service mariadb stop
mysqld_safe