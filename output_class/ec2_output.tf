
// Creates Instance
resource "aws_instance" "web1-output" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
}

output "instance_arn" {
  value = "${aws_instance.web1-output.arn}"
}

output "public_ip" {
  value = "${aws_instance.web1-output.public_ip}"
}

output "cpu_core_count" {
value = "${aws_instance.web1-output.cpu_core_count}"
}

output "cpu_threads_per_core" {
  value = "${aws_instance.web1-output.cpu_threads_per_core}"
}

output "ebs_block_device" {
  value = "${aws_instance.web1-output.ebs_block_device}"
}

output "ephemeral_block_device" {
  value = "${aws_instance.web1-output.ephemeral_block_device}"
}

output " get_password_data" {
  value = "${aws_instance.web1-output.get_password_data}"
}

output "instance_state" {
  value = "${aws_instance.web1-output.instance_state}"
}

output "instance_type" {
  value = "${aws_instance.web1-output.instance_type}"
}

output "ipv6_address_count" {
  value = "${aws_instance.web1-output.ipv6_address_count}"
}

output "ipv6_addresses" {
  value = "${aws_instance.web1-output.ipv6_addresses}"
}

output "key_name" {
  value = "${aws_instance.web1-output.key_name}"
}

output "metadata_options" {
  value = "${aws_instance.web1-output.metadata_options}"
}

output "network_interface" {
  value = "${aws_instance.web1-output.network_interface}"
}

output "password_data" {
  value = "${aws_instance.web1-output.password_data}"
}

output "placement_group" {
  value = "${aws_instance.web1-output.placement_group}"
}

output "private_dns" {
  value = "${aws_instance.web1-output.private_dns}"
}

output "private_ip" {
  value = "${aws_instance.web1-output.private_ip}"
}

output "public_dns" {
  value = "${aws_instance.web1-output.public_dns}"
}

output "ec2_public_ip" {
  value = "${aws_instance.web1-output.public_ip}"
}

output "root_block_device" {
  value = "${aws_instance.web1-output.root_block_device}"
}

output "security_groups" {
  value = "${aws_instance.web1-output.security_groups}"
}

output "source_dest_check" {
  value = "${aws_instance.web1-output.source_dest_check}"
}

output "subnet_id" {
  value = "${aws_instance.web1-output.subnet_id}"
}

output "tenancy" {
  value = "${aws_instance.web1-output.tenancy}"
}

output "volume_tags" {
  value = "${aws_instance.web1-output.volume_tags}"
}








