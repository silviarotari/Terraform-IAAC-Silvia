//Creates Public Subnets

// Creates public_subnet1
resource "aws_subnet" "public_subnet1" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.public_subnet1}"
    availability_zone  = "${var.region}${var.az1}"
    map_public_ip_on_launch = true

  tags = "${var.tags}"
}

// Creates public_subnet2
resource "aws_subnet" "public_subnet2" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.public_subnet2}"
    availability_zone  = "${var.region}${var.az2}"
     map_public_ip_on_launch = true

  tags = "${var.tags}"
}

// Creates public_subnet3
resource "aws_subnet" "public_subnet3" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.public_subnet3}"
    availability_zone  = "${var.region}${var.az3}"
     map_public_ip_on_launch = true

  tags = "${var.tags}"
}


