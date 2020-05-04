//Creates CentOS instance
resource "aws_instance" "bastion" {
  ami           = "${var.ami}"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.dev1.id}"
  availability_zone = "${var.region}${var.az1}"
  vpc_security_group_ids = ["${aws_security_group.bastion_sec.id}"]
  associate_public_ip_address = true
  key_name  =  "${aws_key_pair.us-east-2-key.key_name}"


  tags = "${var.tags}"
   
}

# resource "aws_instance" "centos" {
#   ami           = "${data.aws_ami.centos.id}"
#   instance_type = "t2.micro"
# }

# data "aws_ami" "centos" {
#   most_recent = true
#   owners      = ["679593333241"]
#   filter {
#     name   = "state"
#     values = ["available"]
#   }
#   filter {
#     name   = "name"
#     values = ["CentOS Linux 7 x86_64 HVM EBS *"]
#   }
# }
