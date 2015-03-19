# Wordpress or PHP vagrant setup

## Vagrant Box:
Ubuntu 12.04 LTS (GNU/Linux 3.2.0-23-generic x86_64)
Apache2
PHP5
MySQL
phpMyAdmin
Vim
xDebug

add the following to your hostfile:
```
192.168.33.58 www.dev.wordpressproject.com
```
### wordpress:

* u: admin
* p: 12345

### db:

* u: root
* p: root
* table: test

## Running the Vagrant Box

You may need to run the following before starting the vagrant box:
```
vagrant box add avenuefactory/lamp
```
```
vagrant plugin install vagrant-triggers
```

Vagrant destroy will dump the sql tables into create_tables.sql saving them for later use.

.idea files are for PHPStorm. 