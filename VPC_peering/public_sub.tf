//Creates Public Subnets
resource "aws_subnet" "public_sub1" { 
  vpc_id = "${aws_vpc.main.id}" 
  cidr_block = "${var.cidr_block1_public}" 
  availability_zone = "${var.region}${var.az1}"
  map_public_ip_on_launch = true
  
  
  tags = "${var.tags}"
  
} 
resource "aws_subnet" "public_sub2" { 
  vpc_id = "${aws_vpc.main.id}" 
  cidr_block = "${var.cidr_block2_public}" 
  availability_zone = "${var.region}${var.az2}"
    map_public_ip_on_launch = true

  tags = "${var.tags}"
} 

resource "aws_subnet" "public_sub3" { 
  vpc_id = "${aws_vpc.main.id}" 
  cidr_block = "${var.cidr_block3_public}"
  availability_zone = "${var.region}${var.az3}"
    map_public_ip_on_launch = true


  tags = "${var.tags}"
}