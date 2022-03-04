# ec2 instance variables values
ami                                  = "ami-033b95fb8079dc481"
instance_type                        = "t2.micro"
key_name                             = "windows-on-nigeriakitchen-kp"
bootstrapFileToLaunchWithEC2Instance = "python_bootstrap"
server_name                          = "python_app_server"
securityGroupToAttachToEC2Instance   = "tb_vpc_python_sg"
subnetToPlaceEC2Instance             = "app_tier_subnet_zone_a"
user_data                            = ""

# Security rules variables values
securityGroupIdToAddRuleTo = ""
securityRuleFromPort       = ["22", "3000"]
securityRuleToPort         = ["22", "3000"]
securityGroupRuleCidrBlock = "10.0.16.0/24" 