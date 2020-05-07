#!/bin/bash
sudo yum install httpd -y 
sudo systemctl enable httpd
sudo systemctl start httpd

echo "<h1>httpd-user_data with Terraform</h1>" > /var/www/html/index.html



##
#!/bin/bash
yum update -y
amazon-linux-extras install -y lamp-mariadb10.2-php7.2 php7.2
yum install -y httpd mariadb-server
systemctl start httpd
systemctl enable httpd
chown -R apache:apache /var/www/html
echo "<!DOCTYPE html>
<html>
<head><center><b>Apache is Deployed via Terraform</b></center></head>
<body><center>
<img src="https://s24255.pcdn.co/wp-content/uploads/2015/03/Apache-http-server.png">
</center></body>
</html>" > /var/www/html/index.html
