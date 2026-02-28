variable "project" { #manadatory for which project you are creating resources
  type = string
}

variable "environment" { #manadatory for which project you are creating resources
  type = string
}
variable "ami_id" {
  type = string
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "sg_ids" {
  type = list(string)

}

variable "ec2_tags" { #optional
  type    = map(any)
  default = {}

}
