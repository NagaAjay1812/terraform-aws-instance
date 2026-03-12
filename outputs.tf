output "ec2_id" { # we need outputs to create other resources ex: route 53
  value = aws_instance.this.id
}
output "ec2_public_ip" {
  value = aws_instance.this.public_ip
}

output "ec2_private_ip" {
  value = aws_instance.this.private_ip
}
