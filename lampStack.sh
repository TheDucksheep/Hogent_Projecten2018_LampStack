#!/bin/bash

# LAMP installatie script
# Authors: 
#		   Lennert Mertens
#		   Jens Neirynck


# Colors
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
GREEN='\033[0;32m'
NC='\033[0m'		 #No Color


echo -e ${CYAN}"Made by Jens Neirynck & Lennert Mertens"${NC}


## Apache installeren
echo -e ${PURPLE}Apache installeren${NC}
sudo dnf install -y httpd mod_ssl
sudo systemctl start httpd
sudo systemctl enable httpd
firewall-cmd --add-service=http
firewall-cmd --add-service=https
firewall-cmd --add-service=http --permanent
firewall-cmd --add-service=https --permanent
echo -e ${PURPLE}Apache installeren: DONE${NC}

## MySql en PhpMyAdmin installeren
echo -e ${PURPLE}Mysql en phpMyAdmin installatie${NC}
sudo dnf install -y mariadb-server mariadb php phpMyAdmin
sudo systemctl start mariadb
sudo systemctl enable mariadb
sudo systemctl restart httpd

echo -e ${PURPLE}Mysql en phpMyAdmin installatie: DONE${NC}

## MySql configuratie
echo -e ${PURPLE}Mysql configuratie${NC}
mysql_secure_installation <<EOF

y
$MYSQL_ROOT_PASS
$MYSQL_ROOT_PASS
y
y
y
y
EOF

echo -e ${PURPLE}Mysql configuratie: DONE${NC}


##Toegang krijgen tot phpMyAdmin
echo -e ${PURPLE}Toegang krijgen tot phpMyAdmin${NC}

sed -i 's/Require ip 127.0.0.1/#Require ip 127.0.0.1/' /etc/httpd/conf.d/phpMyAdmin.conf
sed -i 's/Require ip ::1/#Require ip ::1/' /etc/httpd/conf.d/phpMyAdmin.conf
sed -i '1! s/\(#Require ip ::1\)/Require all granted\n\1/' /etc/httpd/conf.d/phpMyAdmin.conf

echo -e ${PURPLE}Toegang krijgen tot phpMyAdmin: DONE${NC}

## CMS-systeem installeren (Drupal8)

if [ $SOFTWARE = 'drupal8' ]
then
# Drupal
echo -e ${PURPLE}Installatie Drupal8${NC}
sudo dnf install -y drupal8
sudo cp /usr/share/drupal8/sites/default/default.settings.php /usr/share/drupal8/sites/default/settings.php

sudo chown apache /usr/share/drupal8/sites/default/settings.php
sudo sed -i 's/Require local/Require all granted/' /etc/httpd/conf.d/drupal8.conf
sudo systemctl restart httpd
echo -e ${PURPLE}Installatie drupal8: DONE${NC}
fi


#Het root user passwoord instellen
echo -e ${PURPLE}Passwoord wijzigen${NC}

passwd --stdin root <<EOF
$FEDORA_ROOT
$FEDORA_ROOT
EOF

echo -e ${GREEN}DE LAMP STACK IS SUCCESVOL GEINSTALLEERD... HET TOESTEL ZAL NU HERSTARTEN${NC}
sudo reboot

