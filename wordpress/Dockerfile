FROM debian:buster

RUN set -ex; \
	apt-get update; \
	apt-get install wget gnupg -y; \
	wget -q https://packages.sury.org/php/apt.gpg -O- | apt-key add -; \
	echo "deb https://packages.sury.org/php/ buster main" > /etc/apt/sources.list.d/php.list; \
	apt-get update; \
	apt-get install nginx nginx-common -y; \
	apt-get install vim m4 -y; \
	apt-get install php8.0 php8.0-fpm php8.0-mysql php8.0-cli php8.0-common php8.0-opcache php8.0-readline php8.0-mbstring php8.0-xml php8.0-gd php8.0-curl -y

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

RUN mkdir /config
COPY config /config/

CMD ["entrypoint.sh"]
