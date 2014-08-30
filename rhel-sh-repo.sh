#!/bin/bash

# EPEL Repository
echo "Adding EPEL Repository"
rpm -ivh --force http://download.fedoraproject.org/pub/epel/6/$(arch)/epel-release-6-8.noarch.rpm
sed -i '1,10 s/^enabled\s?=\s?.*/enabled=1/g' /etc/yum.repos.d/epel.repo

# Remi Repository
echo "Adding remi Repository"
rpm -ivh --force http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
sed -i '1,10 s/^enabled\s?=\s?.*/enabled=1/g' /etc/yum.repos.d/remi.repo

# rpmforge Repository
echo "Adding rpmforge Repository"
rpm -ivh --force http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm
sed -i '1,10 s/^enabled\s?=\s?.*/enabled=1/g' /etc/yum.repos.d/rpmforge.repo
