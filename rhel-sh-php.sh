#!/bin/bash

# Install PHP, if not already installed
if ! rpm -qa | grep -qw php; then
	echo "Installing PHP"
	yum install -q -y php
else
	echo "Checking PHP.. Already Installed"
fi

# Install php-mysql, if not already installed
if ! rpm -qa | grep -qw "php-mysql"; then
	echo "Installing php-mysql"
	yum install -q -y php-mysql
else
	echo "Checking php-mysql.. Already Installed"
fi
