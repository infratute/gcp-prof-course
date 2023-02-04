# This script can be bootstrapped or can be run post installation.
#!/bin/bash
yum update -y
# The below command will reboot the server right away.
shutdown -r now
# The below command will install Apache Webserver on Redhat/Fedora/CentOS.
yum install httpd -y
# The below command will start the Apache Webserver on Redhat/Fedora/CentOS.
systemctl start httpd
# The below command will make sure the httpd service is started automatically everytime when your machine is rebooted.
systemctl enable httpd
# Check httpd status
systemctl status httpd
# Add contents the index.html file, to view on the home page
echo "<h1> Hello world. The Webserver is running fine.</h1>" > /var/www/html/index.html
