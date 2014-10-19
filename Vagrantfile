# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "hnakamur/ubuntu-14.04-x64"
  config.vm.network :private_network, ip: "192.168.33.2"
  config.vm.boot_timeout = 120

  config.vm.provider :virtualbox do |vb|
    # memory size
    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "provisioning/playbook.yml"
  end
end
