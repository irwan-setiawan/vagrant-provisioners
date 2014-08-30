#!/bin/bash

# Set DocumentRoot in Apache config file to the project files where it is shared in /vagrant
echo "Setting Apache's DocumentRoot for Laravel"
sed -i 's/^DocumentRoot .*/DocumentRoot "\/vagrant\/public"/g' /etc/httpd/conf/httpd.conf
sed -i 's/\/var\/www\/html/\/vagrant\/public/g' /etc/httpd/conf/httpd.conf

# Restart Apache service
echo "Restarting Apache Service"
service httpd restart


# Install php-mcrypt, if not already installed
if ! rpm -qa | grep -qw "php-mcrypt"; then
	echo "Installing php-mcrypt"
	yum install -q -y php-mcrypt
else
	echo "Checking php-mcrypt.. Already Installed"
fi
