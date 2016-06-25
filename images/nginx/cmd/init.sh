envsubst '$NGINX_PORT:$NGINX_HOST:$PROJECT_WEBROOT' < /etc/nginx/tpl/symfony.conf > /etc/nginx/conf.d/symfony.conf && \
nginx