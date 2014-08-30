#!/bin/bash

# Set Timezone to Singapore
echo "Setting Timezone to Singapore"
rm /etc/localtime
ln -s /usr/share/zoneinfo/Asia/Singapore /etc/localtime
