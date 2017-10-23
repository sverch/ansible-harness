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
  config.vm.box = "bento/ubuntu-16.04"

  # Virtualbox provisioner options
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 4
  end

  config.vm.provider "aws" do |aws, override|
    override.vm.box = "vagrant-aws-dummy-placeholder"
    aws.keypair_name = "ansible-harness-test-key"
    aws.associate_public_ip = "true"
    override.ssh.username = "ubuntu"
    override.ssh.private_key_path = ".ssh-test-key/id_rsa"

    aws.instance_type = "t2.micro"

    # https://stackoverflow.com/questions/14124234/how-to-pass-parameter-on-vagrant-up-and-have-it-in-the-scope-of-vagrantfile#14124316
    aws.ami = ENV.fetch("ANSIBLE_HARNESS_AMI")
    aws.subnet_id = ENV.fetch("ANSIBLE_HARNESS_SUBNET_ID")
    aws.security_groups = [ENV.fetch("ANSIBLE_HARNESS_SECURITY_GROUP")]

    aws.tags = {
	  'Name' => 'ansible-harness-test-instance'
    }
  end

  # Run Ansible from the Vagrant VM
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook.yml"
  end

  # Run serverspec tests
  config.vm.provision :serverspec do |spec|
    spec.pattern = 'serverspec/tests/*_spec.rb'
  end
end
