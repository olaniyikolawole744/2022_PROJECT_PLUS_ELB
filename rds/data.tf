# Data to fetch subnet in availability zone a for subnet group 
data "aws_subnet" "get_subnet_ids_from_vpc_for_subnet_group_aza" {
  filter {
    name   = "tag:Name"
    values = ["db_tier_subnet_zone_a"]
  }
}

#Data to fetch subnet in availability zone c for subnet group 
data "aws_subnet" "get_subnet_ids_from_vpc_for_subnet_group_azc" {
  filter {
    name   = "tag:Name"
    values = ["web_tier_subnet_zone_c"]
  }
}

# get aza app tier subnet cidr block for use in db security group
data "aws_subnet" "get_app_tier_subnet_cidr_block_for_db_security_group" {
  filter {
    name   = "tag:Name"
    values = ["app_tier_subnet_zone_a"]
  }
}


# Data source block to fetch vpc id
data "aws_vpc" "get_vpc" {
  filter {
    name   = "tag:Name"
    values = ["tb_vpc"]
  }
}

# Data source block to fetch database security group
data "aws_security_group" "get_db_sg" {
  filter {
    name   = "tag:Name"
    values = ["tb_vpc_db_sg"]
  }
}