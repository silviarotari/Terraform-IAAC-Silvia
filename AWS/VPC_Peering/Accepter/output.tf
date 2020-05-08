  output "vpc_cidr" {
    value       = "${aws_vpc.main.cidr_block}"
  }

  output "vpc_id" {
    value       = "${aws_internet_gateway.gw.vpc_id}"
  }

  output "private_subnets" {
    value       = [
      "${aws_subnet.private_subnet_cidr1.id}     ${aws_subnet.private_subnet_cidr1.cidr_block}     ${aws_subnet.private_subnet_cidr1.availability_zone}" ,
      "${aws_subnet.private_subnet_cidr2.id}     ${aws_subnet.private_subnet_cidr2.cidr_block}     ${aws_subnet.private_subnet_cidr2.availability_zone}" ,
      "${aws_subnet.private_subnet_cidr3.id}     ${aws_subnet.private_subnet_cidr3.cidr_block}     ${aws_subnet.private_subnet_cidr3.availability_zone}"
    ]
  }

  output "public_subnets" {
    value       = [
      "${aws_subnet.public_subnet_cidr1.id}      ${aws_subnet.public_subnet_cidr1.cidr_block}      ${aws_subnet.public_subnet_cidr1.availability_zone}" ,
      "${aws_subnet.public_subnet_cidr2.id}      ${aws_subnet.public_subnet_cidr2.cidr_block}      ${aws_subnet.public_subnet_cidr2.availability_zone}" ,
      "${aws_subnet.public_subnet_cidr3.id}      ${aws_subnet.public_subnet_cidr3.cidr_block}      ${aws_subnet.public_subnet_cidr3.availability_zone}"
    ]
  }

output "region" {
  value       = "${var.region}    ${var.region_name}"
}

output "tags" {
  value       = "${var.tags}"
}

  output "gateway_id" {
    value       = "${aws_route_table.public_rt.id}"
  }

  output "nat_gateway_id" {
    value       = "${aws_route_table.private_rt.id}" 
  }

  output "ec2_bastion" {
    value       = "${aws_instance.bastion.instance_type}"
  }

  output "ec2_backup_server" {
  value       = "${aws_instance.backup.instance_type}"
  }