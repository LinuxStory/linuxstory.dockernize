FROM debian:stable

RUN set -ex; \
	apt-get update; \
	apt-get install nginx nginx-common -y; \
	apt-get install vim m4 -y; \
	apt-get install php7.0 php7.0-fpm php7.0-mysql php7.0-cli php7.0-common php7.0-json php7.0-opcache php7.0-readline php7.0-mbstring php7.0-xml php7.0-gd php7.0-curl -y

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

RUN mkdir /config
COPY config /config/

CMD ["entrypoint.sh"]
