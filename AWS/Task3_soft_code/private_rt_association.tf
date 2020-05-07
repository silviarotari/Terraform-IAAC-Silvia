// Private RT Association
resource "aws_route_table_association" "ngw1" {
  subnet_id      = "${aws_subnet.private_subnet1.id}"
  route_table_id = "${aws_route_table.rt_ngw.id}"
}
resource "aws_route_table_association" "ngw2" {
  subnet_id      = "${aws_subnet.private_subnet2.id}"
  route_table_id = "${aws_route_table.rt_ngw.id}"
}
resource "aws_route_table_association" "ngw3" {
  subnet_id      = "${aws_subnet.private_subnet3.id}"
  route_table_id = "${aws_route_table.rt_ngw.id}"
}

