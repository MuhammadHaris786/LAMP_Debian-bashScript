#Installing Apache

sudo apt install apache2
apache2 -version
sudo ufw enable
sudo ufw app list
sudo ufw allow ‘Apache’
sudo ufw allow in "Apache"
sudo ufw status
firefox $echo $(hostname -I | awk '{print $1}')


#Installing SQL

sudo apt install mysql-server

#installing PHP
sudo apt install php libapache2-mod-php php-mysql
php -v
sudo chown -R $USER:$USER /var/www
echo -e '<?php\nphpinfo();\n?>' > /var/www/html/info.php
firefox $echo "$(hostname -I | awk '{print $1}')/info.php"

#sudo mkdir /var/www/Mharis
#sudo chown -R $USER:$USER /var/www/Mharis
#sudo nano /etc/apache2/sites-available/Mharis.conf
#echo -e '<VirtualHost *:80>\nServerName your_domain\nServerAlias www.your_domain\nServerAdmin webmaster@localhost\nDocumentRoot /var/www/your_domain\nErrorLog ${APACHE_LOG_DIR}/error.log\nCustomLog ${APACHE_LOG_DIR}/access.log combined\n</VirtualHost>' > $(sudo /etc/apache2/sites-available/Mharis.conf)
#sudo a2ensite Mharis
#sudo a2dissite 000-default
#sudo apache2ctl configtest
#sudo systemctl reload apache2
#sudo nano /var/www/Mharis/info.php
#echo -e '<?php\nphpinfo();\n?>' >  /var/www/Mharis/info.php







