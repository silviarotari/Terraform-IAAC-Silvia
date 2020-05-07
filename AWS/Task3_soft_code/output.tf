output "vpc" {
  value = [
    "${aws_vpc.main.id}        ${aws_vpc.main.cidr_block}"
  ]
}

output "public_subnets" {
  value = [
    "${aws_subnet.public_subnet1.id}     ${aws_subnet.public_subnet1.cidr_block}     ${aws_subnet.public_subnet1.availability_zone}" ,
    "${aws_subnet.public_subnet2.id}     ${aws_subnet.public_subnet2.cidr_block}     ${aws_subnet.public_subnet2.availability_zone}" ,  
    "${aws_subnet.public_subnet3.id}     ${aws_subnet.public_subnet3.cidr_block}     ${aws_subnet.public_subnet3.availability_zone}"
  ] 
}

output "private_subnets" {
  value = [
    "${aws_subnet.private_subnet1.id}     ${aws_subnet.private_subnet1.cidr_block}     ${aws_subnet.private_subnet1.availability_zone}",
    "${aws_subnet.private_subnet2.id}     ${aws_subnet.private_subnet2.cidr_block}     ${aws_subnet.private_subnet2.availability_zone}",
    "${aws_subnet.private_subnet3.id}     ${aws_subnet.private_subnet3.cidr_block}     ${aws_subnet.private_subnet3.availability_zone}"
  ]
}

output "igw_id" {
  value = "${aws_internet_gateway.gw.id}    ${aws_route_table.rt_gw.id}"
}

output "ngw_id" {
  value = "${aws_nat_gateway.ngw.id}        ${aws_route_table.rt_ngw.id}"
}

output "region" {
  value       = "${var.region}"
}

  output "instance_public_ip" {
    value       = "${aws_instance.web.public_ip}"
  }

  output "tags" {
  value       = "${var.tags}"
}