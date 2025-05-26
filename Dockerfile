# Use the official PHP image with Apache
FROM php:8.2-apache

# Enable Apache modules
RUN a2enmod rewrite

# Copy custom virtual host config
COPY apache/vhost.conf /etc/apache2/sites-available/000-default.conf

# Set working directory
WORKDIR /var/www/html

# Install PHP extensions if needed
# RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy application source
COPY src/ /var/www/html/
