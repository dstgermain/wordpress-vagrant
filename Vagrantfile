# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  config.vm.box = "avenuefactory/lamp"
  config.vm.box_check_update = true

  config.vm.network :private_network, ip: "192.168.33.58"
  config.vm.network :forwarded_port, guest: 88, host: 8888,
    auto_correct: true

  config.vm.synced_folder "public", "/var/www/html", :nfs => true
  config.vm.synced_folder "vagrant", "/vagrant", :nfs => true

  # adds a few tools and creates db from last instance.
  config.vm.provision "shell", path: "vagrant/provision.sh"
  
  # run sql dump before destroying the vm.
  config.trigger.before :destroy do
    info "Dumping the database before destroying the VM..."
    run_remote  "mysqldump test -u root -proot > /vagrant/create_tables.sql"
  end

end
