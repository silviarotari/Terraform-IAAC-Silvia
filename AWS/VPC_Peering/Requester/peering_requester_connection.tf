resource "aws_vpc" "peer" {
  provider   = "aws.peer"
  cidr_block = "192.168.0.0/16"
}
data "aws_caller_identity" "peer" {
  provider = "aws.peer"
}
# Requester's side of the connection.
resource "aws_vpc_peering_connection" "peer" {
  vpc_id        = "vpc-0eca273f9da00283c"         # Requester VPC_id
  peer_vpc_id   = "vpc-0207b17508792f80d"         # Acceptor VPC_id
  peer_owner_id = "242198316058"                  # Acceptor AWS ID
  #peer_accepter_id = "242198316058"
  peer_region   = "us-east-1"
  auto_accept   = false
  tags = {
    Side = "Requester"
  }
}