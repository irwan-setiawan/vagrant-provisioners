Vagrant Provisioners
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

  # Your vagrant configuration here
  

  # Provisioning from https://github.com/irwan-setiawan/vagrant-provisioners/
  config.vm.provision :shell, :path => "https://raw.githubusercontent.com/irwan-setiawan/vagrant-provisioners/master/rhel-sh-timezone-singapore.sh"
  config.vm.provision :shell, :path => "https://raw.githubusercontent.com/irwan-setiawan/vagrant-provisioners/master/rhel-sh-httpd.sh"
  config.vm.provision :shell, :path => "https://raw.githubusercontent.com/irwan-setiawan/vagrant-provisioners/master/rhel-sh-php.sh"
  config.vm.provision :shell, :path => "https://raw.githubusercontent.com/irwan-setiawan/vagrant-provisioners/master/rhel-sh-mysql.sh"
  
  # Custom provisioners
  config.vm.provision :shell, :path => "Vagrantprovisioner.sh"
end
```
