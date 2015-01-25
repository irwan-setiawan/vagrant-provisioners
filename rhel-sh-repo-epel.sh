#!/bin/bash

# EPEL Repository
echo "Adding EPEL Repository"
rpm -ivh --force http://download.fedoraproject.org/pub/epel/6/$(arch)/epel-release-6-8.noarch.rpm
sed -i '1,10 s/^enabled.*=.*/enabled=1/g' /etc/yum.repos.d/epel.repo
