provider "aws" {
  region = "us-east-1"
  version = "2.59"
}


// Creates Key
resource "aws_key_pair" "us-east-1-key-output" {
  key_name   = "silvia_bastion_output"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}


// Creates Instance
resource "aws_instance" "web-output" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
}


// Creates Sec Group
resource "aws_security_group" "allow_tls-output" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "TLS from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}


// Creates Route53
resource "aws_route53_record" "www" {
  zone_id = "Z379MNJXU81VEX"
  name    = "www.silviarotari.com"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.web-output.public_ip}"]
}


// Outputs Eveything

output "key_pair" {
  value = "${aws_key_pair.us-east-1-key-output.key_name}"
}


output "instance_id" {
  value = "${aws_instance.web-output.id}"
}

output "sec_group" {
  value = "${aws_security_group.allow_tls-output.name}"
}

output "route53_zone_id" {
  value = "${aws_route53_record.www.zone_id}"
}

