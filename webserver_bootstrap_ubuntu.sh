#!/bin/bash
sudo -s
apt update 
apt install apache2
ls /var/www/html
echo "Hello world from $(hostname) $(hostname -i)" > /var/www/html/index.html
sudo service apache2 start
