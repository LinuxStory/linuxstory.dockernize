FROM debian:stable

RUN apt-get update
RUN apt-get install vim apt-utils -y
RUN apt-get install mariadb-plugin-rocksdb -y

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
