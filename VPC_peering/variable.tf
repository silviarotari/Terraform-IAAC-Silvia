
 variable "region" {}
 variable "region_name" {}
 variable "ami" {}
 variable "instance_type" {}

 variable "vpc_cidr" {}
 variable "gw_cidr_block" {}


 variable "az1" {}
 variable "az2" {}
 variable "az3" {}


 variable "public_sub1" {}
 variable "public_sub2" {}
 variable "public_sub3" {}


variable "private_sub1" {}
variable "private_sub2" {}
variable "private_sub3" {}


variable "tags" {
    type = "map" 
}

