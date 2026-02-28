locals {
  common_tags = {
    project_name = var.project
    environment  = var.environment
    Terraform    = true
  }
  #enforcing for best standards
  ec2_final_tags = merge(
    local.common_tags,
    var.ec2_tags
  )
}
