resource "aws_instance" "db_server" {
  ami           = "${var.ami}"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.private_sub1.id}"
  availability_zone = "${var.region}${var.az1}"
  vpc_security_group_ids = ["${aws_security_group.db_sg.id}"]
  key_name  =  "${aws_key_pair.us-east-2-key.key_name}"
  user_data = "${file("mysql.sh")}"


  tags = "${var.tags}"  
}
