#!/bin/bash

apt-get install wget mariadb-server gettext-base net-tools iputils-ping vim -y
sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.5/zsh-in-docker.sh)"
echo "[Success: MariaDB dependencies]"

sleep 5

service mysql start

sleep 5

data_name="ahmed"
data_user="ahbajaou"
data_pwd="test" 

echo "CREATE DATABASE IF NOT EXISTS ${data_name} ;" > db1.sql
echo "CREATE USER IF NOT EXISTS '${data_user}'@'%' IDENTIFIED BY '${data_pwd}' ;" >> db1.sql
echo "GRANT ALL PRIVILEGES ON ${data_name}.* TO '${data_user}'@'%' ;" >> db1.sql
echo "FLUSH PRIVILEGES;" >> db1.sql

mysql < db1.sql

rm db1.sql

echo "MariaDB setup is complete."