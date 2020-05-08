resource "aws_route_table" "public_rt" {
  vpc_id       = "${aws_vpc.main.id}"

  route {
    cidr_block = "${var.ig_cidr_block}"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }
  tags         = "${var.tags}"
}