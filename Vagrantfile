# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.define 'arch' do |node|
    node.vm.box = "archlinux/archlinux"
    node.vm.hostname = 'arch'
    node.vm.network :private_network , ip: '192.168.50.30'
  end

  config.vm.provider "virtualbox" do |vb|
    # 割り当てるメモリー(MB)
    vb.memory = 4096
    # CPUの数
    vb.cpus = 2
  end
end
