resource "aws_vpc_peering_connection_accepter" "peer" {
  provider                  = "aws.peer"
  vpc_peering_connection_id = "pcx-09370699bb35686f0"
  auto_accept               = true
  tags = {
    Side = "Accepter"
  }
}