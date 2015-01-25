#!/bin/bash

# Remi Repository
echo "Adding remi Repository"
rpm -ivh --force http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
sed -i '1,10 s/^enabled.*=.*/enabled=1/g' /etc/yum.repos.d/remi.repo
