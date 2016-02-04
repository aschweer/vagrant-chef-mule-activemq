# encoding: utf-8
# -*- mode: ruby -*-
# vi: set ft=ruby :

ENV['VAGRANT_DEFAULT_PROVIDER'] = 'virtualbox'


VAGRANTFILE_API_VERSION = "2"

Vagrant.require_version ">= 1.5.0"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Set the version of chef to install using the vagrant-omnibus plugin
  config.omnibus.chef_version = :latest

  config.vm.box = "bento/ubuntu-14.04"
  # Turn on shared folders
  #config.vm.synced_folder ".", "/vagrant"

  # Turn off shared folders
  config.vm.synced_folder ".", "/vagrant", id: "vagrant-root", disabled: true

  # Mule machine
    config.vm.define "mule" do |mule|
      mule.vm.hostname = "mule"

      mule.vm.network "forwarded_port", guest: 4545, host: 4545

      mule.vm.provision :chef_solo do |chef|
        chef.cookbooks_path = "cookbooks"
        chef.roles_path = "cookbooks/roles"
        chef.add_role("mule")
      end
    end

  # ActiveMQ machine
  config.vm.define "activemq" do |activemq|
    activemq.vm.hostname = "activemq"

    activemq.vm.network "forwarded_port", guest: 4546, host: 4546

    activemq.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = "cookbooks"
      chef.roles_path = "cookbooks/roles"
      chef.add_role("activemq")
    end
  end

end
