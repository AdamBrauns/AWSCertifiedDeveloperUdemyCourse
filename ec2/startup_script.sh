#!/bin/bash  
yum install httpd php php-mysql -y  
yum update -y  
chkconfig httpd on  
service httpd start  
echo "<?php phpinfo();?>" > /var/www/html/index.php
cd /var/www/html  
wget https://s3.amazonaws.com/acloudguru-production/connect.php