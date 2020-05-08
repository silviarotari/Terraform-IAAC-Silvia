  
resource "aws_route" "rt_pub" {
  route_table_id            =  "${aws_route_table.public_rt.id}"
  destination_cidr_block    =  "${var.peering_destination_cidr}"
  vpc_peering_connection_id =  "${var.peering_connection_id}"
}
resource "aws_route" "rt_priv" {
  route_table_id            =  "${aws_route_table.private_rt.id}"
  destination_cidr_block    =  "${var.peering_destination_cidr}"
  vpc_peering_connection_id =  "${var.peering_connection_id}"
}

resource "aws_route" "private" {
  route_table_id            = "${var.peering_private_rt_id}"
  destination_cidr_block    = "192.168.0.0/24"
  vpc_peering_connection_id = "${var.peering_connection_id}"
  depends_on                = ["aws_route_table.private_rt"]
}


resource "aws_route" "public" {
  route_table_id            = "${var.peering_private_rt_id}"
  destination_cidr_block    = "192.168.0.0/24"
  vpc_peering_connection_id = "${var.peering_connection_id}"
  depends_on                = ["aws_route_table.public_rt"]
}