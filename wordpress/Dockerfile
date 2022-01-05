FROM debian:stable

RUN set -ex; \
	apt-get update; \
	apt-get install nginx nginx-common -y; \
	apt-get install vim m4 -y; \
	apt-get install php7.4 php7.4-fpm php7.4-mysql php7.4-cli php7.4-common php7.4-json php7.4-opcache php7.4-readline php7.4-mbstring php7.4-xml php7.4-gd php7.4-curl -y

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

RUN mkdir /config
COPY config /config/

RUN sed -i 's/listen = \/run\/php\/php7.4-fpm\.sock/listen = \/tmp\/php-fpm\.sock/g' /etc/php/7.4/fpm/pool.d/www.conf
RUN sed -i 's/pm = dynamic/pm = static/g' /etc/php/7.4/fpm/pool.d/www.conf
RUN sed -i 's/pm.max_children = 5/pm.max_children = 8/g' /etc/php/7.4/fpm/pool.d/www.conf
RUN sed -i 's/;listen.backlog = 511/listen.backlog = 2048/g' /etc/php/7.4/fpm/pool.d/www.conf

RUN sed -i 's/max_execution_time = 30/max_execution_time = 60/g' /etc/php/7.4/fpm/php.ini
RUN sed -i 's/max_input_time = 60/max_input_time = 100/g' /etc/php/7.4/fpm/php.ini
RUN sed -i 's/memory_limit = 128M/memory_limit = 256M/g' /etc/php/7.4/fpm/php.ini
RUN sed -i 's/post_max_size = 8M/post_max_size = 128M/g' /etc/php/7.4/fpm/php.ini
RUN sed -i 's/upload_max_filesize = 2M/upload_max_filesize = 100M/g' /etc/php/7.4/fpm/php.ini

CMD ["entrypoint.sh"]
