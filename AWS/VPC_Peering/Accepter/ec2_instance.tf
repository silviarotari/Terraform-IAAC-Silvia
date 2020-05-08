data "aws_ami" "centos7" {
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



resource "aws_instance" "bastion" {
  ami                     =   "${data.aws_ami.centos7.id}"                                     # CentOS 7 for bastion host
  instance_type           =   "${var.instance_type}"
  availability_zone       =   "${var.region}${var.az1}"
  vpc_security_group_ids  =   ["${aws_security_group.bastion.id}"]
  subnet_id               =   "${aws_subnet.public_subnet_cidr1.id}"
  key_name                =   "${aws_key_pair.us_east_1_key.key_name}"

  tags                    =   "${var.tags}"
}

resource "aws_instance" "backup" {
  ami                    = "${data.aws_ami.centos7.id}"
  instance_type          = "${var.instance_type}"
  availability_zone      = "${var.region}${var.az2}"
  vpc_security_group_ids = ["${aws_security_group.backup.id}"]  
  subnet_id              = "${aws_subnet.private_subnet_cidr2.id}"
  key_name               = "${aws_key_pair.us_east_1_key.key_name}"

  tags                   = "${var.tags}"
}