
FROM    debian:bullseye


COPY    ./tools/create_db.sh  /

RUN     apt-get update -y && apt-get install mariadb-server  mariadb-client -y && chmod +x /create_db.sh 

CMD ["/create_db.sh"]