FROM nginx:stable-alpine

ENV NGINX_HOST symfony.dev
ENV NGINX_PORT 80
ENV PROJECT_ROOT /var/www/symfony

ADD conf/nginx.conf /etc/nginx/
ADD conf/symfony.conf /etc/nginx/tpl/
ADD cmd/init.sh /etc/init.sh


RUN echo "upstream php-upstream { server php:9000; }" > /etc/nginx/conf.d/upstream.conf

CMD ["/bin/sh","/etc/init.sh"]

EXPOSE 80
EXPOSE 443
