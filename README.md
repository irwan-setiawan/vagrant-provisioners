Vagrant Profisioners
===================

Collection of scripts used to provision vagrant boxes

* rhel -- used for RHEL-based Linux, e.g. RHEL, CentOS

How to use
==========

Edit your `Vagrantfile` to include desired scripts to run

```
# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "chef/centos-6.5"
  config.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_centos-6.5_chef-provisionerless.box"

  #config.vm.network :forwarded_port, guest: 80, host: 8080
  config.vm.network :private_network, ip: "10.0.0.6"

  # Provisioning from https://github.com/irwan-setiawan/vagrant-provisioners/
  config.vm.provision :shell, :path => "https://raw.githubusercontent.com/irwan-setiawan/vagrant-provisioners/master/rhel-sh-timezone-singapore.sh"
  config.vm.provision :shell, :path => "https://raw.githubusercontent.com/irwan-setiawan/vagrant-provisioners/master/rhel-sh-httpd.sh"
  config.vm.provision :shell, :path => "https://raw.githubusercontent.com/irwan-setiawan/vagrant-provisioners/master/rhel-sh-php.sh"
  config.vm.provision :shell, :path => "https://raw.githubusercontent.com/irwan-setiawan/vagrant-provisioners/master/rhel-sh-mysql.sh"
  
  # Custom provisioners
  config.vm.provision :shell, :path => "Vagrantprovisioner.sh"
end
```
