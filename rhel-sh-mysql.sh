#!/bin/bash

# Install MySQL, if not already installed
if ! rpm -qa | grep -qw "mysql-server"; then
	echo "Installing MySQL Server"
	yum install -q -y mysql-server
else
	echo "Checking MySQL Server.. Already Installed"
fi


# Install mysql-libs, if not already installed
if ! rpm -qa | grep -qw "mysql-libs"; then
	echo "Installing MySQL-libs"
	yum install -q -y mysql-libs
else
	echo "Checking MySQL-libs.. Already Installed"
fi

# Register MySQL as a service
echo "Registering MySQL as a service"
chkconfig mysqld on

# Start MySQL service
echo "Starting MySQL Service"
service mysqld restart
