# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  config.vm.box = "avenuefactory/lamp"
  config.vm.box_check_update = true
  config.vm.network "private_network", ip: "192.168.33.28"
  config.vm.synced_folder "public", "/var/www/html", nfs: true
  config.vm.synced_folder "vagrant", "/vagrant", nfs: true
  config.vm.synced_folder "db/", "/var/lib/mysql/test/", group: "mysql", owner: "mysql"

  config.vm.provision "shell", path: "vagrant/provision.sh"

end
