# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.provider :virtualbox do |provider|
    provider.customize ["modifyvm", :id, "--memory", 2048]
    provider.customize ["modifyvm", :id, "--cpus", 2]
  end

  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder "projects/", "/etc/projects"
  config.vm.synced_folder "files/", "/etc/vagrant"
  config.vm.synced_folder "scripts/sites/", "/etc/scripts"

  config.vm.network :private_network, ip: '192.168.202.202'

  config.vm.provision :shell, path: "scripts/init.sh"
  config.vm.provision :shell, path: "scripts/sites/mysite/init.sh"
end
