FROM debian:stable

RUN set -ex; \
	apt-get update; \
	apt-get install nginx nginx-common -y; \
	apt-get install vim m4 -y; \
	apt-get install php7.3 php7.3-fpm php7.3-mysql php7.3-cli php7.3-common php7.3-json php7.3-opcache php7.3-readline php7.3-mbstring php7.3-xml php7.3-gd php7.3-curl -y

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

RUN mkdir /config
COPY config /config/

CMD ["entrypoint.sh"]
