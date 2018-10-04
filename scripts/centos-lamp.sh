#!/bin/bash

# Update CentOs with any patches
yum update -y --exclude=kernel

# Tools
yum install -y nano git unzip screeen

#Apache
yum install -y httpd httpd-devel httpd-tools
chkconfig --add httpd
chkconfig httpd on
service httpd stop

rm -rf /var/www/html
ln -s /vagrant /var/www/html

service httpd start

#php
yum install -y mysql mysql-server mysql-devel
chkconfig --add mysqld
chkconfig mysqld on

service mysqld start

mysql -u root -e "SHOW DATABASES";

#DOWNLOAD starter content

service httpd restart

