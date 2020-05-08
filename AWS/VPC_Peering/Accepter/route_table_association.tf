# Private Route Table Association
resource "aws_route_table_association" "a1" {
  subnet_id      = "${aws_subnet.private_subnet_cidr1.id}"
  route_table_id = "${aws_route_table.private_rt.id}"
}
resource "aws_route_table_association" "a2" {
  subnet_id      = "${aws_subnet.private_subnet_cidr2.id}"
  route_table_id = "${aws_route_table.private_rt.id}"
}
resource "aws_route_table_association" "a3" {
  subnet_id      = "${aws_subnet.private_subnet_cidr3.id}"
  route_table_id = "${aws_route_table.private_rt.id}"
}

# Public Route Table Association
resource "aws_route_table_association" "b1" {
  subnet_id      = "${aws_subnet.public_subnet_cidr1.id}"
  route_table_id = "${aws_route_table.public_rt.id}"
}
resource "aws_route_table_association" "b2" {
  subnet_id      = "${aws_subnet.public_subnet_cidr2.id}"
  route_table_id = "${aws_route_table.public_rt.id}"
}
resource "aws_route_table_association" "b3" {
  subnet_id      = "${aws_subnet.public_subnet_cidr3.id}"
  route_table_id = "${aws_route_table.public_rt.id}"
}