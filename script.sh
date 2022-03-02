#!/bin/bash

#CREATE VPC
cd vpc
terraform init
terraform fmt
terraform validate
terraform plan "-var-file=variableValues.tfvars"
terraform apply "-var-file=variableValues.tfvars" --auto-approve

#CREATE HTTPD SERVERS
cd ..
cd servers
cd httpd_server
terraform init
terraform fmt
terraform validate
terraform plan "-var-file=variableValues.tfvars"
terraform apply "-var-file=variableValues.tfvars" --auto-approve

#CREATE PYTHON SERVERS
cd ../
cd python_server
terraform init
terraform fmt
terraform validate
terraform plan "-var-file=variableValues.tfvars"
terraform apply "-var-file=variableValues.tfvars" --auto-approve

#CREATE RDS DB
cd ../../
cd rds
terraform init
terraform fmt
terraform validate
terraform plan "-var-file=variableValues.tfvars"
terraform apply "-var-file=variableValues.tfvars" --auto-approve