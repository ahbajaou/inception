
FROM    debian:bullseye

COPY    ./tools/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY    ./tools/create_db.sh  /

RUN     apt update -y && chmod +x /create_db.sh 

CMD ["/create_db.sh"]