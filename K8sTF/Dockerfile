# Use an official httpd base image
FROM httpd:latest

# Copy your web content to the default Apache document root
COPY ./index.html /usr/local/apache2/htdocs/

# Optional: You can customize the Apache configuration by copying your own configuration files
# COPY ./your-apache-config.conf /usr/local/apache2/conf/httpd.conf

# Optional: Expose port 80 if you want to access the web server from outside the container
EXPOSE 80
