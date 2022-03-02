#Data source to fetch instance security group
data "aws_security_group" "getSecurityGroupToAttachToECEInstance" {
  filter {
    name   = "tag:Name"
    values = [var.securityGroupToAttachToEC2Instance]
  }
}

# Data source to bootstrap launch files
data "template_file" "bootstrapFileToLaunchWithEC2Instance" {
  template = file("${path.module}/${"httpd_bootstrap"}.txt")
}
