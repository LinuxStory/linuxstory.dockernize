sudo docker run -dt --name os_mariadb -v $PWD/DBdata:/var/lib/mysql -v $PWD/Files:/Files linuxstory/mariadb:0.0.2 entrypoint.sh
sudo docker run -dt --name os_wp_php --tmpfs /fastcgi-cache --tmpfs /tmp --link os_mariadb --sysctl net.core.somaxconn=80000 -v $PWD/os:/var/www -p 6789:80 linuxstory/wordpress:php7.4 entrypoint.sh --server 127.0.0.1 --site-root /var/www


