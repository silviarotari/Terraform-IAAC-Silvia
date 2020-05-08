resource "aws_route_table" "private_rt" {
  vpc_id           = "${aws_vpc.main.id}"

  route {
    cidr_block     = "${var.nat_cidr_block}"
    nat_gateway_id = "${aws_nat_gateway.ngw.id}"
  }
  tags             = "${var.tags}"
}