data "aws_ami" "amazon" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.0.20200406.0-x86_64-ebs*"]
  }
}
resource "aws_instance" "jenkins_server" {
  ami                    = "${data.aws_ami.amazon.id}"
  instance_type          = "${var.instance_type}"
  availability_zone      = "${var.region}${var.az1}"
  vpc_security_group_ids = ["${aws_security_group.jenkins_sg.id}"]
  subnet_id              = "${aws_subnet.public_subnet1.id}"
  key_name               = "${aws_key_pair.us-east-1-key.key_name}"
  tags                   = "${var.tags}"

  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "${var.user}"
      private_key = "${file("~/.ssh/id_rsa")}"
      host        = "${aws_instance.jenkins_server.public_ip}"
    }
    
    inline = [
      "sudo yum install java-1.8.0-openjdk-devel -y",
      "curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo",
      "sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key",
      "sudo yum install jenkins -y",
      "sudo systemctl start jenkins",
      "sudo systemctl enable jenkins",
      "echo -e $(tput setaf 1 )'Jenkins Passwd is: '$(tput sgr0) $(tput setaf 2)`sudo cat /var/lib/jenkins/secrets/initialAdminPassword`$(tput sgr0)",
        "sudo cp -r /tmp/.ssh/  /var/lib/jenkins",
        "sudo cp -r /tmp/config  /var/lib/jenkins/.ssh/",
        "sudo chmod 600 /var/lib/jenkins/.ssh/id_rsa",
        "sudo chown -R jenkins:jenkins /var/lib/jenkins/.ssh",    

    ]
  }
}
