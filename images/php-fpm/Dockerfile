FROM php:7.0.8-fpm-alpine

MAINTAINER Alin Nica <go@alinnica.com>

ENV TZ "Europe/Berlin"

VOLUME ["/var/www/symfony"]

WORKDIR /var/www/symfony

ADD conf/symfony.pool.conf /etc/php5/fpm/pool.d/
ADD conf/symfony.ini /etc/php5/fpm/conf.d/
ADD conf/symfony.ini /etc/php5/cli/conf.d/
ADD cmd/init.sh /etc/init.sh

RUN rm -f /usr/local/lib/composer.phar && \
    curl -so /usr/local/lib/composer.phar https://getcomposer.org/composer.phar && \
    chmod +x  /usr/local/lib/composer.phar && \
    ln -s /usr/local/lib/composer.phar /usr/local/bin/composer && \
    chown -R www-data:www-data /var/www && \
    chmod +x /etc/init.sh

USER www-data

CMD ["/bin/sh","/etc/init.sh"]

EXPOSE 9000