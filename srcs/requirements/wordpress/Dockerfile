FROM    debian:bullseye


RUN apt-get update -y && apt-get install php-fpm php-mysql -y && apt-get install curl -y

COPY    ./tools/script.sh  /
RUN   chmod +X /script.sh
CMD [ "/script.sh" ]