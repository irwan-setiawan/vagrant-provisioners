#!/bin/bash

# Install git, if not already installed
if ! rpm -qa | grep -qw git; then
	echo "Installing git"
	yum install -q -y git
else
	echo "Checking git.. Already Installed"
fi

# Set Timezone to Singapore
echo "Setting Timezone to Singapore"
rm /etc/localtime
ln -s /usr/share/zoneinfo/Asia/Singapore /etc/localtime
