resource "aws_instance" "this" {
  ami           = var.ami_id # we paramatrized
  instance_type = var.instance_type

  # Reference the security group ID here
  vpc_security_group_ids = var.sg_ids

  # Optional: Add tags to the instance for identification
  tags = local.ec2_final_tags
}


