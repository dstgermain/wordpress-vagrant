# wordpress-vagrant
Wordpress or PHP vagrant setup

Vagrant Box:
Ubuntu 12.04 LTS (GNU/Linux 3.2.0-23-generic x86_64)
Apache2
PHP5
MySQL
phpMyAdmin
Vim
xDebug

Simple setup for wordpress sites. 
Just add a public folder with a wordpress install. 
Add a db folder.
Uncomment the sql script in provision.sh.
Run vagrant up

Comment out the sql script. Your db will be saved in the db folder.

.idea files are for PHPStorm. 