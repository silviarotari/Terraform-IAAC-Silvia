#!/bin/bash
sudo yum install httpd -y 
sudo systemctl enable httpd
sudo systemctl start httpd

echo "<h1>httpd-user_data with Terraform</h1>" > /var/www/html/index.html