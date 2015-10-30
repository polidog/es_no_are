# -*- mode: ruby -*-
# # vi: set ft=ruby :

IP_ADDRESS='192.168.10.40'
BOX_URL='https://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-amd64-vagrant-disk1.box'

Vagrant.configure('2') do |config|
    config.vm.define :ubuntu do |ubuntu|
        ubuntu.vm.box='ubuntu/trusty64'
        ubuntu.vm.box_url = BOX_URL

        ubuntu.vm.network :private_network, ip: IP_ADDRESS
        ubuntu.vm.provider :virtualbox do |vb|
            vb.customize ["modifyvm", :id, "--memory", "1024", "--cpus", "2"]
        end
        ubuntu.vm.provision :shell, :path => "provision.sh"
    end
end
