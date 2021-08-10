#!/bin/bash

# entrypoint.sh --server 127.0.0.1 --site-root /var/www
# entrypoint.sh --server 127.0.0.1 --site-root /var/www --cert-path /etc/xxx --cert-key-path /etc/xxx

if [ "4" = "$#" ]; then
	m4 -DWP_SERVER_NAME="$2" -DWP_SITE_ROOT="$4" /config/wp-nginx.conf > /etc/nginx/sites-available/default
fi

if [ "8" = "$#" ]; then
	m4 -DWP_SERVER_NAME="$2" -DWP_SITE_ROOT="$4" -DWP_CERT_PATH="$6" -DWP_CERT_KEY_PATH="8" /config/wp-nginx.ssl.conf > /etc/nginx/sites-available/default
fi

service php8.0-fpm start
service nginx start
exec /bin/bash
