# Use the official Debian base image
FROM debian:latest

# Install MariaDB
RUN apt-get update && \
    apt-get install -y mariadb-server && \
    apt-get clean

# Copy custom configuration file from the current directory
COPY my.cnf /etc/mysql/my.cnf

# Expose port 3306 to allow external connections
EXPOSE 3306

# Start MariaDB server
CMD ["mysqld", "--user=mysql", "--console"]
