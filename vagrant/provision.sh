#!/usr/bin/env bash

mysql -D test -u root -proot < /vagrant/create_tables.sql

sudo service apache2 stop

echo "INSTALLING VIM & XDEBUG"
sudo apt-get update > /dev/null
sudo apt-get -y install vim php5-xdebug
echo ""
echo ""
echo "XDEBUG LOCATION:"
find / -name 'xdebug.so' 2> /dev/null
echo ""
echo ""
echo "UPDATING PHP.INI WITH XDEBUG"
sudo sed -i.bak "s/display_errors = Off/display_errors = On/" /etc/php5/apache2/php.ini
sudo sed -i.bak '$ a\xdebug.remote_enable=1' /etc/php5/mods-available/xdebug.ini
sudo sed -i.bak '$ a\xdebug.remote_connect_back=1' /etc/php5/mods-available/xdebug.ini
sudo sed -i.bak '$ a\xdebug.scream=0' /etc/php5/mods-available/xdebug.ini
sudo sed -i.bak '$ a\xdebug.show_local_vars=1' /etc/php5/mods-available/xdebug.ini
echo ""
echo ""
echo "RESTARTING APACHE2"
#restart apache
sudo service apache2 start