# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu-precise-64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.define "master" do |master|
    config.vm.network :private_network, ip: "10.0.2.10"
    config.vm.host_name = "master"
    #config.vm.provision "shell", path: "hosts_config.sh"
    #config.vm.provision "shell", path: "hadoop_config.sh"
  end

  config.vm.define "slave1" do |slave1|
    config.vm.network :private_network, ip: "10.0.2.15"
    config.vm.host_name = "slave1"
    #config.vm.provision "shell", path: "hosts_config.sh"
    #config.vm.provision "shell", path: "hadoop_config.sh"
  end

  #config.vm.define "slave2" do |slave2|
  #  config.vm.network :private_network, ip: "192.168.56.202"
  #  config.vm.host_name = "slave2"
  #  config.vm.provision "shell", path: "hosts_config.sh"
  #  config.vm.provision "shell", path: "hadoop_config.sh"
  #end
  
  #config.vm.define "slave3" do |slave3|
  #  config.vm.network :private_network, ip: "192.168.56.203"
  #  config.vm.host_name = "slave3"
  #  config.vm.provision "shell", path: "hosts_config.sh"
  #  config.vm.provision "shell", path: "hadoop_config.sh"
  #end
end
