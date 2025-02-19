//Creates RT
resource "aws_route_table" "rt_private" { 
  vpc_id = "${aws_vpc.main.id}" 
  tags = "${var.tags}"
  route { 
    cidr_block = "0.0.0.0/0" 
    gateway_id = "${aws_nat_gateway.ngw.id}" 
    } 
} 


//RT ASSOCIATION with public subnets
resource "aws_route_table_association" "rt_private1" { 
  subnet_id = "${aws_subnet.private_sub1.id}" 
  route_table_id = "${aws_route_table.rt_private.id}" 
} 

resource "aws_route_table_association" "rt_private2" { 
  subnet_id = "${aws_subnet.private_sub2.id}" 
  route_table_id = "${aws_route_table.rt_private.id}" 
} 

resource "aws_route_table_association" "rt_private3" { 
  subnet_id = "${aws_subnet.private_sub3.id}" 
  route_table_id = "${aws_route_table.rt_private.id}" 
}



