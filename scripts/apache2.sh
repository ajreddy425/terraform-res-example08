#!/bin/bash
yum install httpd -y
echo "<h1> This is Publlic Subnet 02 </h1>" >/var/www/html/index.html
chkconfig httpd on
service httpd start
