# Use the official PHP + Apache image
FROM php:8.2-apache

# Install PostgreSQL PDO driver
RUN apt-get update && apt-get install -y libpq-dev \
    && docker-php-ext-install pdo pdo_mysql

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Copy your project files to the Apache server root
COPY . /var/www/html/

# Optional: Fix permissions
RUN chown -R www-data:www-data /var/www/html

# Expose default web port
EXPOSE 80
