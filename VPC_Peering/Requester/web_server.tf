resource "aws_instance" "web_server" {
  ami           = "${var.ami}"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.public_sub2.id}"
  availability_zone = "${var.region}${var.az2}"
  vpc_security_group_ids = ["${aws_security_group.web_sg.id}"]
  associate_public_ip_address = true
  key_name  =  "${aws_key_pair.us-east-2-key.key_name}"
  user_data = "${file("apache.sh")}"


  tags = "${var.tags}"  
}