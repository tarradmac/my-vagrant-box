# -*- mode: ruby -*-
# vi: set ft=ruby :

$distrib = ENV['DISTRIB'] || 'bookworm64'
$script_name = "scripts/%s.sh" % $distrib

Vagrant.configure("2") do |config|
    config.vm.box = "debian/%s" % $distrib
    config.vm.define 'devbox' do |node|
        node.vm.hostname = 'devbox'
    end
    config.vm.provider "libvirt" do |libvirt|
        libvirt.memory = 4096
        libvirt.cpus = 6
    end
  config.vm.provision "shell", path: $script_name
  config.vm.provision "shell", path: "scripts/install-ansible.sh"
  config.vm.synced_folder ".", "/vagrant", disabled: true
end
