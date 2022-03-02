#!/bin/bash

#CREATE HTTPD SERVERS
cd servers
cd httpd_server
terraform destroy "-var-file=variableValues.tfvars" --auto-approve

#CREATE PYTHON SERVERS
cd ..
cd python_server
terraform destroy "-var-file=variableValues.tfvars" --auto-approve

#CREATE RDS DB
cd ../../
cd rds
terraform destroy "-var-file=variableValues.tfvars" --auto-approve

#CREATE VPC
cd ..
cd vpc
terraform destroy "-var-file=variableValues.tfvars" --auto-approve