//Creates RT
resource "aws_route_table" "rt_private" { 
  vpc_id = "${aws_vpc.main.id}" 
  tags = "${var.tags}"
  route { 
    cidr_block = "0.0.0.0/0" 
    gateway_id = "${aws_nat_gateway.mat.id}" 
    } 
} 


//RT ASSOCIATION with public subnets
resource "aws_route_table_association" "rt_private1" { 
  subnet_id = "${aws_subnet.rt_private1.id}" 
  route_table_id = "${aws_route_table.rt_private.id}" 
} 

resource "aws_route_table_association" "rt_private2" { 
  subnet_id = "${aws_subnet.rt_private2.id}" 
  route_table_id = "${aws_route_table.rt_private.id}" 
} 

resource "aws_route_table_association" "rt_private3" { 
  subnet_id = "${aws_subnet.rt_private3.id}" 
  route_table_id = "${aws_route_table.rt_private.id}" 
}