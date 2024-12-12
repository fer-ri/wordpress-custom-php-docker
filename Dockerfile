# Adjust the version from https://hub.docker.com/_/wordpress
FROM wordpress:6.7.1-php8.3-apache

COPY custom.ini $PHP_INI_DIR/conf.d/
