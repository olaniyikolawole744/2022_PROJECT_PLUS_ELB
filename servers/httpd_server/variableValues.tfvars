# ec2 variables values
ami                                  = "ami-033b95fb8079dc481"
instance_type                        = "t2.micro"
key_name                             = "windows-on-nigeriakitchen-kp"
bootstrapFileToLaunchWithEC2Instance = "httpd_bootstrap"
server_name                          = "httpd_server"
securityGroupToAttachToEC2Instance   = "tb_vpc_httpd_sg"
subnetToPlaceEC2Instance             = "web_tier_subnet_zone_c"
user_data                            = ""

# security group rules variables values
securityGroupIdToAddRuleTo = ""
securityRuleFromPort       = ["22", "80", "443"]
securityRuleToPort         = ["22", "80", "443"]
securityGroupRuleCidrBlock = "0.0.0.0/0" 