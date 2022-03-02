# Terraform configuration block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

# calling EC2 module to create server
module "serverTemplate" {
  source = "../../ec2_module"

  subnetToPlaceEC2Instance             = var.subnetToPlaceEC2Instance
  securityGroupToAttachToEC2Instance   = var.securityGroupToAttachToEC2Instance
  bootstrapFileToLaunchWithEC2Instance = var.bootstrapFileToLaunchWithEC2Instance
  ami                                  = var.ami
  instance_type                        = var.instance_type
  key_name                             = var.key_name
  server_name                          = var.server_name
  user_data                            = data.template_file.bootstrapFileToLaunchWithEC2Instance.template
}

# Calling security group rule module for creating ingress
module "createSecurityGroupRule" {
  count                      = length(var.securityRuleFromPort)
  source                     = "../../security_group_rule_module"
  securityGroupIdToAddRuleTo = data.aws_security_group.getSecurityGroupToAttachToECEInstance.id
  securityRuleFromPort       = var.securityRuleFromPort[count.index]
  securityRuleToPort         = var.securityRuleToPort[count.index]
  securityGroupRuleCidrBlock = var.securityGroupRuleCidrBlock
}





