#!/bin/bash

# Install Apache, if not already installed
if ! rpm -qa | grep -qw httpd; then
	echo "Installing Apache"
	yum install -q -y httpd
else
	echo "Checking Apache.. Already Installed"
fi

# Set DocumentRoot in Apache config file to the project files where it is shared in /vagrant
echo "Setting Apache's DocumentRoot"
sed -i 's/^DocumentRoot .*/DocumentRoot "\/vagrant"/g' /etc/httpd/conf/httpd.conf
sed -i 's/\/var\/www\/html/\/vagrant/g' /etc/httpd/conf/httpd.conf

# Set ServerName in Apache config file to localhost
echo "Setting Apache's ServerName"
sed -i 's/^#ServerName .*/ServerName localhost/g' /etc/httpd/conf/httpd.conf

# Set AllowOverride in all directory settings in Apache config to enable .htaccess
echo "Setting Apache's AllowOverride"
sed -i 's/^\s*AllowOverride .*/AllowOverride All/g' /etc/httpd/conf/httpd.conf

# Disable apache sendfile to fix "cache" when serving static files
echo "Disable Apache's sendfile"
sed -i 's/^#EnableSendfile off/EnableSendfile off/g' /etc/httpd/conf/httpd.conf

# Register Apache as a service
echo "Registering Apache as a service"
chkconfig httpd on

# Start Apache service
echo "Starting Apache Service"
service httpd restart
