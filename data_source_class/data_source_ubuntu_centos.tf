```
provider "aws" {
  region  = "us-east-1"
  version = "2.59"
}


# Search for Ubuntu ami
data "aws_ami" "ubuntu" {
  most_recent = true   # latest ami
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"] # Canonical
}


# Search for CentOS ami
data "aws_ami" "centos" {
  most_recent = true
  owners      = ["679593333241"]
  filter {
    name   = "state"
    values = ["available"]
  }
  filter {
    name   = "name"
    values = ["CentOS Linux 7 x86_64 HVM EBS *"]
  }
}


# Create Ubuntu Instance
resource "aws_instance" "web" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"
}


# Create CentOS Instance
resource "aws_instance" "centos" {
  ami           = "${data.aws_ami.centos.id}"
  instance_type = "t2.micro"
}


# Output Ubuntu
output "ami" {
  value = "${data.aws_ami.ubuntu.id}"
}

#Output CentOS
output "centos" {
  value = "${data.aws_ami.centos.id}"
} 
