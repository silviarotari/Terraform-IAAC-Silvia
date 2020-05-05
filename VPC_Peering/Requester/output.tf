//Outputs
output "region" {
  value       = "${var.region}"
}

output "vpc" {
  value = [
    "${aws_vpc.main.id}        ${aws_vpc.main.cidr_block}"
  ]
}

output "public_subnets" {
  value = [
    "${aws_subnet.public_sub1.id}     ${aws_subnet.public_sub1.cidr_block}     ${aws_subnet.public_sub1.availability_zone}" ,
    "${aws_subnet.public_sub2.id}     ${aws_subnet.public_sub2.cidr_block}     ${aws_subnet.public_sub2.availability_zone}" ,  
    "${aws_subnet.public_sub3.id}     ${aws_subnet.public_sub3.cidr_block}     ${aws_subnet.public_sub3.availability_zone}"
  ] 
}

output "private_subnets" {
  value = [
    "${aws_subnet.private_sub1.id}     ${aws_subnet.private_sub1.cidr_block}     ${aws_subnet.private_sub1.availability_zone}",
    "${aws_subnet.private_sub2.id}     ${aws_subnet.private_sub2.cidr_block}     ${aws_subnet.private_sub2.availability_zone}",
    "${aws_subnet.private_sub3.id}     ${aws_subnet.private_sub3.cidr_block}     ${aws_subnet.private_sub3.availability_zone}"
  ]
}


output "igw_id" {
  value = "${aws_internet_gateway.gw.id}    ${aws_route_table.rt_public.id}"
}

output "ngw_id" {
  value = "${aws_nat_gateway.ngw.id}"       
}


output "key_name" {
  value = "${aws_key_pair.us-east-2-key.key_name}"
}

output "instane_id"{
    value = "${aws_instance.bastion.id}"
}
output "instance_key_name"{
    value = "${aws_instance.bastion.key_name}"
}

output "rt_association" {
  value = [
      "${aws_route_table_association.rt_public1.id}     ${aws_route_table_association.rt_private1.id}" ,
      "${aws_route_table_association.rt_public2.id}     ${aws_route_table_association.rt_private2.id}" ,
      "${aws_route_table_association.rt_public3.id}     ${aws_route_table_association.rt_private3.id}"
  ]
}


output "peering_requester_connection" {
  value = "${aws_vpc_peering_connection.peer.id}"
}


  output "tags" {
  value       = "${var.tags}"
}