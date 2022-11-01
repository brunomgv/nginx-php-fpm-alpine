# Use php7.4-fpm-alpine official image
FROM php:7.4-fpm-alpine

# Install nginx, bash and supervisor
RUN apk update && apk add nginx bash supervisor

# Add "install-php-extensions" to install php extensions
# repository: https://github.com/mlocati/docker-php-extension-installer
ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

# Install-php-extensions
RUN chmod +x /usr/local/bin/install-php-extensions && \
    install-php-extensions bcmath \ 
    calendar \ 
    ctype \
    dom \ 
    exif \
    ffi \
    fileinfo \
    filter \
    gd \
    gettext \
    gmp \
    iconv \
    imagick \
    json \
    memcached \
    mysqli \
    opcache \
    pcntl \
    pdo_mysql \
    pgsql \
    posix \
    redis \
    session \
    shmop \
    soap \
    sockets \
    sysvmsg \
    sysvsem \
    sysvshm \
    tokenizer \
    xsl \
    zip

# Configure supervisord
COPY supervisord.conf /etc/supervisord.conf

# Set the workdir
WORKDIR /var/www/html

# Expose ports
EXPOSE 80

# Let supervisord start nginx & php-fpm
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]