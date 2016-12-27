# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "windows2012r2"
  config.berkshelf.enabled = true
  config.berkshelf.berksfile_path = 'Berksfile'
  config.vm.guest = :windows
  config.vm.communicator = "winrm"
  config.vm.boot_timeout = 600
  #config.vm.graceful_half_timeout = 600
  config.vm.provision :chef_zero do |chef|
    chef.cookbooks_path = 'chef_test_5'
    chef.nodes_path = 'nodes'
    chef.roles_path = 'roles'
    chef.add_role 'common'
    chef.run_list = [
      'recipe[chef_test_5::default]'
    ]
  end
end
