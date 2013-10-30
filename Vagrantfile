# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu-precise-64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.define "master" do |master|
    master.vm.network :private_network, ip: "192.168.56.200"
    master.vm.host_name = "master"
    master.vm.provision "shell", path: "master_config.sh"
    master.vm.provision "shell", path: "hosts_config.sh"
    #master.vm.provision "shell", path: "hadoop_config.sh"
  end

  config.vm.define "slave1" do |slave1|
    slave1.vm.network :private_network, ip: "192.168.56.201"
    slave1.vm.host_name = "slave1"
    slave1.vm.provision "shell", path: "hosts_config.sh"
    #slave1.vm.provision "shell", path: "hadoop_config.sh"
  end
  config.vm.define "slave2" do |slave2|
   slave2.vm.network :private_network, ip: "192.168.56.202"
   slave2.vm.host_name = "slave2"
   slave2.vm.provision "shell", path: "hosts_config.sh"
   #slave2.vm.provision "shell", path: "hadoop_config.sh"
  end
  
  config.vm.define "slave3" do |slave3|
    slave3.vm.network :private_network, ip: "192.168.56.203"
    slave3.vm.host_name = "slave3"
    slave3.vm.provision "shell", path: "hosts_config.sh"
    #slave3.vm.provision "shell", path: "hadoop_config.sh"
  end
end
