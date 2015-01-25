#!/bin/bash

# rpmforge Repository
echo "Adding rpmforge Repository"
rpm -ivh --force http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm
sed -i '1,10 s/^enabled.*=.*/enabled=1/g' /etc/yum.repos.d/rpmforge.repo
