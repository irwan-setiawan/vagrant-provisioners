#!/bin/bash

# CentOS 7 don't support MySQL by default -- replaced with MariaDB
# So we have to install MySQL Community repo first

sudo rpm -Uvh http://dev.mysql.com/get/mysql-community-release-el7-5.noarch.rpm

# Install MySQL, if not already installed
if ! rpm -qa | grep -qw "mysql-community-server"; then
	echo "Installing MySQL Community Server"
	yum install -q -y mysql-community-server
else
	echo "Checking MySQL Community Server.. Already Installed"
fi


# Install mysql-libs, if not already installed
if ! rpm -qa | grep -qw "mysql-community-libs"; then
	echo "Installing MySQL-libs"
	yum install -q -y mysql-community-libs
else
	echo "Checking MySQL-libs.. Already Installed"
fi

# Register MySQL as a service
echo "Registering MySQL as a service"
chkconfig mysqld on

# Start MySQL service
echo "Starting MySQL Service"
service mysqld restart
