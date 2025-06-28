variable "project" {
  default = "roboshop"
}
variable "environment" {

}
variable "Component" {
  default = "cart"

}

variable "common_tags" {
  default = {
    project   = "roboshop"
    Terraform = "true"
  }

}

# variable "final-name" {
#     default = "${var.project}"-"${var.environment}"-"${var.Component}"   # we can't use variables inside the variables so in that case we can use locals

# }
# ec2 name = cart
# ec2 name = roboshop-dev-cart


variable "ami_id" {
  description = "AWS AMI ID or RHEL AMI ID "
  type        = string
  default     = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
  default = {}
}

variable "ec2_tags" {
    type = map (string)
    default = {
        Name = "Terraform_Roboshop"
        Purpose = "tfvars demo"
    }
  
}

variable "sg_name" {
    default = "allow_all"
  
}

variable "sg_description" {

    default = "allowing all ports form internet"
  
}

variable "to_port" {
    default = 0
  
}

variable "from_port" {
    default = 0
    type = number
  
}

variable "cidr_blocks" {
    default = ["0.0.0.0/0"]
    type = list(string)
  
}

variable "sg_tags" {
    default = {
        Name = "vinodh"
    }
  
}

variable "instances" {
    default = ["mongodb","redis"]
  
}

variable "zone_id" {
    default = "Z07082243VUB84KU714AG"
  
}

variable "domian_name" {
    default = "vinodh.site"
  
}