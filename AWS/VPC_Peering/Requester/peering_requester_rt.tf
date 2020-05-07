resource "aws_route" "rt_pub"{
    route_table_id  ="${aws_route_table.rt_public.id}"
    destination_cidr_block ="${var.cidr_block}" 
    vpc_peering_connection_id ="${aws_vpc_peering_connection.peer.id}"
}

resource "aws_route" "rt_priv"{
    route_table_id  ="${aws_route_table.rt_private.id}"
    destination_cidr_block ="${var.cidr_block}" 
    vpc_peering_connection_id ="${aws_vpc_peering_connection.peer.id}"
}

# there are 2 peering route table which use route table id'ies 

                                  #1- public route table id
                                  #2- private route table id