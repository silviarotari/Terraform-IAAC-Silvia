# Public Subnets
resource "aws_subnet" "public_subnet_cidr1" {
    vpc_id                  = "${aws_vpc.main.id}"
    cidr_block              = "${var.pub_subnet_cidr1}"
    availability_zone       = "${var.region}${var.az1}"
    map_public_ip_on_launch = true
    tags                    = "${var.tags}"
}

resource "aws_subnet" "public_subnet_cidr2" {
    vpc_id                  = "${aws_vpc.main.id}"
    cidr_block              = "${var.pub_subnet_cidr2}"
    availability_zone       = "${var.region}${var.az2}"
    map_public_ip_on_launch = true
    tags                    = "${var.tags}"
}

resource "aws_subnet" "public_subnet_cidr3" {
    vpc_id                  = "${aws_vpc.main.id}"
    cidr_block              = "${var.pub_subnet_cidr3}"
    availability_zone       = "${var.region}${var.az3}"
    map_public_ip_on_launch = true
    tags                    = "${var.tags}"
} 