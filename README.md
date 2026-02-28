# Terraform AWS Instance

The modules create EC2 instance in AWS

## Input
* project - (required) string type, user must provide project name ex: roboshop
* environment -  (required) string type, user must provide environment name; ex: dev/uat/prod
* ami_id - (required) string type, user must provide ami_id
* instance_type - (optional) string type, default value is t3.micro 
* sg_ids - (required) list of string type, user must provide sg_ids 
* tags - (optional) lsit stype usr can provide the tags they want to have

## outputs

* instance-id - ID of the instance created
* public_ip - Public IP of the instance created
* private_ip - Private IP of the instance created
