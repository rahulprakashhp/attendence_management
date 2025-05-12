# Use the official PHP image with Apache
FROM php:8.2-apache

# Copy project files to the container
COPY . /var/www/html/

# Enable Apache mod_rewrite (optional, but helpful for routing)
RUN a2enmod rewrite

# Set file permissions (optional but recommended)
RUN chown -R www-data:www-data /var/www/html

# Expose port 80 (default for Apache)
EXPOSE 80
