# 🚀 terraform-aws-instance (Reusable EC2 Terraform Module)

This repository contains a reusable Terraform module that provisions an AWS EC2 instance in a parameterized and standardized way.

Instead of defining EC2 resources repeatedly in multiple projects, this module abstracts the logic so it can be reused with different environments, AMIs, and configurations.

---

## 📌 What This Module Does

- Creates an AWS EC2 instance
- Applies standardized tagging using `locals`
- Merges user-provided tags with common tags
- Accepts environment-based inputs

---

## Input Variables
* project - (required) string type, user must provide project name ex: roboshop
* environment -  (required) string type, user must provide environment name; ex: dev/uat/prod
* ami_id - (required) string type, user must provide ami_id
* instance_type - (optional) string type, default value is t3.micro 
* sg_ids - (required) list of string type, user must provide sg_ids 
* tags - (optional) lsit stype usr can provide the tags they want to have

---

## 📤 outputs

* instance-id - ID of the instance created
* public_ip - Public IP of the instance created
* private_ip - Private IP of the instance created

---

## 🔥 Example Usage

```hcl
module "ec2" {
  source        = "../terraform-aws-instance"
  project       = "roboshop"
  environment   = "dev"
  ami_id        = "ami-xxxxxxxx"
  instance_type = "t3.micro"
  sg_ids        = ["sg-xxxxxxxx"]

  ec2_tags = {
    Name = "roboshop-dev"
  }
}
```

---


## 🏷 Tagging Strategy

Common tags are enforced using `locals.tf` and `merge()`:

- project_name
- environment
- Terraform = true
- + any additional tags passed via variables

This ensures consistent tagging across environments.

---

## 📂 Folder Structure

```
terraform-aws-instance/
├── ec2.tf
├── locals.tf
├── outputs.tf
├── variable.tf
└── README.md
```

---


## 🎯 Why This Repo Matters

This project demonstrates:

✔ Reusable Terraform module design  
✔ Parameterized infrastructure  
✔ Standardized tagging  
✔ Clean separation of module logic  

It acts as a foundational building block for larger multi-environment Terraform setups.