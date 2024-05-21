
FROM    debian:bullseye

RUN     apt update -y && apt-get install mariadb-server -y

COPY    ./tools/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY    ./tools/create_db.sh  /

RUN     chmod +x create_db.sh 

CMD ["/create_db.sh"]