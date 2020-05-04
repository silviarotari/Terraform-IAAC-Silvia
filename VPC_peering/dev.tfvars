//Values

region      =   "us-east-2"
region_name  =   "Ohio"
ami = "ami-0f7919c33c90f5b58" 
instance_type = "t2.micro"


cidr_block = "192.168.0.0/16"
gw_cidr_block = "0.0.0.0/0"

az1 = "a"
az2 = "b"
az3 = "c"


cidr_block1_public = "192.168.1.0/24"
cidr_block2_public = "192.168.2.0/24"
cidr_block3_public = "192.168.3.0/24"


cidr_block1_private = "192.168.11.0/24"
cidr_block2_private = "192.168.12.0/24"
cidr_block3_private = "192.168.13.0/24"


ingress_cidr_blocks = ["0.0.0.0/0"]
egress_cidr_blocks = ["0.0.0.0/0"]


tags = {
    Name = "VPC_peering"
    Environment= "Dev"
    Department = "IT"
    Team       = "Infrastructure"
    Created_by = "Silvia Rotari"
}