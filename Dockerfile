FROM php:7.0.24-apache
COPY ./src /var/www/html/

WORKDIR /var/www/html/

RUN ln -s /home/site/wwwroot/files /var/www/html/files

# Configure ports
EXPOSE 2222 80

# Ref: https://docs.microsoft.com/en-us/azure/app-service/containers/tutorial-custom-docker-image
