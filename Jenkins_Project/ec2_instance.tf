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

  
}
