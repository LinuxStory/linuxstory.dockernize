#!/bin/bash

# enerypoint.sh --init

sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf

if [ "--init" = "$1" ]; then
	mysql_install_db
	chown -R mysql:mysql /var/lib/mysql
fi

service mariadb start
exec bash