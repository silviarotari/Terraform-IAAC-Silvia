resource "aws_security_group" "jenkins_sg" {
  name        = "${var.sg_name}"
  description = "Allow inbound traffic"
  vpc_id      = "${aws_vpc.main.id}"


  ingress {

    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {

    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

    tags = "${var.tags}" 
}


