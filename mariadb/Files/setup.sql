CREATE DATABASE wordpress_db;
GRANT ALL PRIVILEGES ON wordpress_db.* TO 'wordpress_user'@'%' IDENTIFIED BY 'wordpress_pass';
FLUSH PRIVILEGES;
