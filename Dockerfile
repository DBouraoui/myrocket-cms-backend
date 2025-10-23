FROM dunglas/frankenphp

WORKDIR /app

RUN install-php-extensions \
    pdo_mysql \
    gd \
    intl \
    zip \
    opcache

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY . .
