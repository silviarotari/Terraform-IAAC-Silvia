# Values
region                   = "us-east-1"
region_name              = "virginia"
key_name                 = "nataliyas_state_class_tf"

vpc_cidr                 = "10.0.0.0/16"

# private and public subnets cidr blocks

pub_subnet_cidr1         = "10.0.1.0/24"
pub_subnet_cidr2         = "10.0.2.0/24"
pub_subnet_cidr3         = "10.0.3.0/24"

priv_subnet_cidr1        = "10.0.11.0/24"
priv_subnet_cidr2        = "10.0.12.0/24"
priv_subnet_cidr3        = "10.0.13.0/24"

# availability zones for subnets
az1                      = "a"
az2                      = "b"
az3                      = "c"

# IG and NAT routes
nat_cidr_block           = "0.0.0.0/0"
ig_cidr_block            = "0.0.0.0/0"

# ec2 instances
instance_type            = "t2.micro"

# security group
ingress_cidr_blocks      = ["0.0.0.0/0"]
egress_cidr_blocks       = ["0.0.0.0/0"]

# tags
tags = {
    # Name                 = "VPC_PROJECT"
    Environment          = "Dev"
    Department           = "IT"
    Team                 = "Infrastructure"
    Created_by           = "Nataliya"
}

# VPC Peering
peering_private_rt_id    = "rtb-015a1372f5bfb0e3b"
peering_connection_id    = "pcx-09370699bb35686f0"
peering_destination_cidr = "192.168.0.0/16"
# peering_route_cidr       = "192.168.0.0/24"