#!/bin/bash


sudo apt update


sudo apt install apache2 -y


sudo service apache2 status


sudo ufw app list


sudo ufw app info "Apache Full"


sudo apt install mysql-server -y


sudo apt install php libapache2-mod-php php-mysql -y


sudo nano /etc/apache2/mods-enabled/dir.conf


sudo systemctl restart apache2

sudo echo "<?php phpinfo(); ?>" > /var/www/html/info.php


echo "You can access the PHP info page by navigating to http://[server-ip-address]/info.php"


sudo apt autoremove -y
