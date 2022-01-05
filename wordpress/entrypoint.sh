#!/bin/bash

# entrypoint.sh --server 127.0.0.1 --site-root /var/www

if [ "4" = "$#" ]; then
        cp /config/nginx.conf /etc/nginx/nginx.conf
	m4 -DWP_SERVER_NAME="$2" -DWP_SITE_ROOT="$4" /config/wp-nginx.conf > /etc/nginx/sites-available/default
fi

service php7.4-fpm start
service nginx start
exec /bin/bash
