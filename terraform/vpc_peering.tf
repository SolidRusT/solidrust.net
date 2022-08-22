# Peering connection: us_west-2 <-> us_east_1

resource "aws_vpc_peering_connection" "us_west-2-us_east_1" {
  vpc_id        = module.vpc_us_west_2.vpc_id
  peer_vpc_id   = module.vpc_us_east_1.vpc_id
  peer_owner_id = local.aws_account
  peer_region   = "us-east-1"
  auto_accept   = false

  tags = local.common_tags

  provider = aws.us-west-2
}

resource "aws_vpc_peering_connection_accepter" "us_east_1-us_west-2" {
  provider                  = aws
  vpc_peering_connection_id = aws_vpc_peering_connection.us_west-2-us_east_1.id
  auto_accept               = true

  tags = local.common_tags
}

resource "aws_route" "us_west-2-us_east_1" {
  count = length(module.vpc_us_west_2.private_route_table_ids)
  route_table_id = module.vpc_us_west_2.private_route_table_ids[count.index]
  destination_cidr_block    = module.vpc_us_east_1.vpc_cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.us_west-2-us_east_1.id

  provider = aws.us-west-2
}

resource "aws_route" "us_east_1-us_west-2" {
  count = length(module.vpc_us_east_1.private_route_table_ids)
  route_table_id = module.vpc_us_east_1.private_route_table_ids[count.index]
  destination_cidr_block    = module.vpc_us_west_2.vpc_cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection_accepter.us_east_1-us_west-2.id
}

# Peering connection: us_west-2 <-> us_east_1

resource "aws_vpc_peering_connection" "us_west-2-us_east_2" {
  vpc_id        = module.vpc_us_west_2.vpc_id
  peer_vpc_id   = module.vpc_us_east_2.vpc_id
  peer_owner_id = local.aws_account
  peer_region   = "us-east-2"
  auto_accept   = false

  tags = local.common_tags

  provider = aws.us-west-2
}

resource "aws_vpc_peering_connection_accepter" "us_east_2-us_west-2" {
  provider                  = aws.us-east-2
  vpc_peering_connection_id = aws_vpc_peering_connection.us_west-2-us_east_2.id
  auto_accept               = true

  tags = local.common_tags
}

resource "aws_route" "us_west-2-us_east_2" {
  count = length(module.vpc_us_west_2.private_route_table_ids)
  route_table_id = module.vpc_us_west_2.private_route_table_ids[count.index]
  destination_cidr_block    = module.vpc_us_east_2.vpc_cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.us_west-2-us_east_2.id

  provider = aws.us-west-2
}

resource "aws_route" "us_east_2-us_west-2" {
  count = length(module.vpc_us_east_2.private_route_table_ids)
  route_table_id = module.vpc_us_east_2.private_route_table_ids[count.index]
  destination_cidr_block    = module.vpc_us_west_2.vpc_cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection_accepter.us_east_2-us_west-2.id

  provider = aws.us-east-2
}
