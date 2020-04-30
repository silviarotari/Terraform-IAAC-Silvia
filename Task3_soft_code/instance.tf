// Creates EC2 instance
resource "aws_instance" "web" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name      = "${aws_key_pair.us-east-1-key.key_name}"
  security_groups = ["${aws_security_group.allow_tls.name}"]
  user_data = "${file("user_data.sh")}"
  availability_zone = "${var.public_subnet_az}"

  tags = {
    Name = "${var.Name}"
    Environment = "${var.Environment}"
    Department = "${var.Department}"
    Team = "${var.Team}"
    Created_by = "${var.Created_by}"
  }
}


