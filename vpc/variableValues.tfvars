#security group variables values 
sg_name             = ["tb_vpc_httpd_sg", "tb_vpc_python_sg", "tb_vpc_db_sg"]
sg_description_main = ["httpd sg", "python sg", "db sg"]
sg_tag_name         = ["tb_vpc_httpd_sg", "tb_vpc_python_sg", "tb_vpc_db_sg"]

# subnet variables values
vpcId                          = ""
subnetCidrBlock                = ["10.0.16.0/24", "10.0.32.0/24", "10.0.48.0/24", "10.0.64.0/24", "10.0.80.0/24", "10.0.96.0/24", "10.0.112.0/24"]
subnetAvailabilityZone         = ["us-east-1a", "us-east-1a", "us-east-1a", "us-east-1c", "us-east-1c", "us-east-1c"]
subnetTagName                  = ["web_tier_subnet_zone_a", "app_tier_subnet_zone_a", "db_tier_subnet_zone_a", "web_tier_subnet_zone_c", "app_tier_subnet_zone_c", "db_tier_subnet_zone_c"]
tier                           = ["public", "private", "private", "public", "private", "private"]
getSubnetDataSourceFilterValue = ["web_tier_subnet_zone_a", "web_tier_subnet_zone_c"]