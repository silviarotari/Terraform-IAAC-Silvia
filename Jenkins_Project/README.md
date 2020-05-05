# HOW TO INSTALL JENKINS

![maxresdefault](https://user-images.githubusercontent.com/57469926/81092012-9e137c00-8ec5-11ea-8a26-162bae8be991.jpg)


:black_medium_square: Jenkins is a free and open source automation server. 

:black_medium_square: It helps automate the parts of software development related to building, testing, and deploying, facilitating continuous integration and continuous delivery.


#### PREREQUISITES:
  - **1 VPC**
   - **6 Subnets**
     - 3 Private Subents
     - 3 Public Subnets
  - **Public subnets should have IGW attached to it** 
  - **Private subnets should have NG attached to it**  
  - **Configure Route Tables**
 
 **To check if everything is configured properly, create ec2 instance, manualy, on public subnet and ping www.google.com**
 
 
 
 ![image](https://user-images.githubusercontent.com/57469926/81093942-6fe36b80-8ec8-11ea-8a6d-952066b554af.png)

If everything is succesufull, you should have proper response :+1: 

# TO INSTALL JENKINS ON EC2 INSTANCE, FOLLOW THE STEPS BELOW: 

```HCL
provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "${var.user}"
      private_key = "${file("~/.ssh/id_rsa")}"
      host        = "${aws_instance.jenkins_server.public_ip}"
    }
    
    inline = [] #This is a list of command strings. They are executed in the order they are provided
```

#### Please refer to null_resource.tf

#### 1. Jenkins is a Java application, so the first step is to install Java
```HCL
"sudo yum install java-1.8.0-openjdk-devel -y",
```


#### 2. The next step is to enable the Jenkins repository
```HCL
"curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo",
```


#### 3. And add the repository to your system with:
```HCL
"sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key",
```


#### 4. Once the repository is enabled, install the latest stable version of Jenkins
```HCL
"sudo yum install jenkins -y",
```


#### 5. After the installation process is completed, start the Jenkins service
```HCL
"sudo systemctl start jenkins",
```


#### 6. Finally enable the Jenkins service to start on system boot
```HCL
"sudo systemctl enable jenkins",
```


#### 7. This inline command string prints the output for Jenkins initialAdminPassword
```HCL
"echo -e $(tput setaf 1 )'Jenkins initialAdminPassword: '$(tput sgr0) $(tput setaf 2)`
sudo cat /var/lib/jenkins/secrets/initialAdminPassword`$(tput sgr0)",
```

## terraform apply -var-file jenkins.tfvars

![image](https://user-images.githubusercontent.com/57469926/81095322-783ca600-8eca-11ea-9c9c-51fd3e032ef5.png)


## http://your_ip_or_domain_name:8080

![image](https://user-images.githubusercontent.com/57469926/81094877-c8673880-8ec9-11ea-8515-db0871e0b402.png)


## To set Jenkins follow the prompts:


![image](https://user-images.githubusercontent.com/57469926/81094896-d026dd00-8ec9-11ea-97d7-c31d4bd1e60f.png)


![image](https://user-images.githubusercontent.com/57469926/81094923-dddc6280-8ec9-11ea-91e8-dc8d29363764.png)


![image](https://user-images.githubusercontent.com/57469926/81095239-5e02c800-8eca-11ea-95b2-086e29023fe0.png)


![image](https://user-images.githubusercontent.com/57469926/81095251-6529d600-8eca-11ea-85d0-5366dc33368b.png)


![image](https://user-images.githubusercontent.com/57469926/81095269-6bb84d80-8eca-11ea-8abd-de46a2877a91.png)



