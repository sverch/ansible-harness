# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # For a complete reference of options, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "bento/fedora-26"

  # Virtualbox provisioner options
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 4
  end

  # Run Ansible from the Vagrant VM
  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "playbook.yml"
  end

  # Run serverspec tests
  config.vm.provision :serverspec do |spec|
    spec.pattern = 'serverspec/tests/*_spec.rb'
  end
end
