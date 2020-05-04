#! /bin/bash
sudo yum install wget -y
sudo yum install httpd -y
sudo systemctl enable httpd
sudo systemctl start httpd
echo "<h1>Apache is Deployed via Terraform</h1>" > /var/www/html/index.html

sudo amazon-linux-extras install php7.2 -y
sudo yum install php -y 
sudo yum restart httpd