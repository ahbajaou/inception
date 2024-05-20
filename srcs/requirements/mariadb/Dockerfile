# Use the official MariaDB image from the Docker Hub
FROM mariadb:latest

RUN     mkdir /shared

WORKDIR /shared

COPY    create_db.sh ./

RUN     apt update -y && chmod +x create_db.sh

ENTRYPOINT [ "./create_db.sh" ]