# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.network "forwarded_port", guest: 8000, host: 8000
  config.vm.provision "docker"
  config.vm.provision "shell" do |s|
    s.path = "provision.sh"
  end
  config.vm.provider "virtualbox" do |vb|
      vb.memory = "4092"
  end
end
