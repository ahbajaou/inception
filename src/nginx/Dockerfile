# Start from a base image, in this case, we're using Debian
FROM debian:latest

# Install Nginx and update package lists
RUN apt-get update && apt-get install -y nginx && apt-get clean

# Copy custom configuration file from the current directory
COPY index.html /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
