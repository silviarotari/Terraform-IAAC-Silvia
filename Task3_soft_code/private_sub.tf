//Creates Private Subnets

// Creates private_subnet1
resource "aws_subnet" "private_subnet1" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.private_subnet1}"

  tags = {
    Name = "${var.Name}"
    Environment = "${var.Environment}"
    Department = "${var.Department}"
    Team = "${var.Team}"
    Created_by = "${var.Created_by}"
 }
}

// Creates private_subnet2
resource "aws_subnet" "private_subnet2" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.private_subnet2}"

  tags = {
     Name = "${var.Name}"
    Environment = "${var.Environment}"
    Department = "${var.Department}"
    Team = "${var.Team}"
    Created_by = "${var.Created_by}"
 }
}

// Creates private_subnet3
resource "aws_subnet" "private_subnet3" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.private_subnet3}"

  tags = {
    Name = "${var.Name}"
    Environment = "${var.Environment}"
    Department = "${var.Department}"
    Team = "${var.Team}"
    Created_by = "${var.Created_by}"
 }
}