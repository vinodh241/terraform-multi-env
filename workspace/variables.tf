variable "ami_id" {
  description = "AWS AMI ID or RHEL AMI ID "
  type        = string
  default     = "ami-09c813fb71547fc4f"
}

# variable "ec2_tags" {
#   type = map(string)
#   default = {
#     Name    = "Terraform_Roboshop"
#     Purpose = "workspace demo"
#   }

# }

variable "sg_name" {
  default = "workspace demo"

}

variable "sg_description" {

  default = "allowing all ports form internet"

}

variable "to_port" {
  default = 0

}

variable "from_port" {
  default = 0
  type    = number

}

variable "cidr_blocks" {
  default = ["0.0.0.0/0"]
  type    = list(string)

}

# variable "sg_tags" {
#     default = {
#         Name = "state demo"
#     }

#}
# variable "environment" {
#   default = "dev" # , "prod" , "UAT"
#   type    = string

# }

variable "instances" {
  default = ["mongodb", "redis"]

}

variable "common_tags" {
  default = {
    project   = "roboshop"
    Terraform = "true"
  }
}



variable "instance_type" {
  default = {
    dev  = "t2.micro"
    prod = "t3.samll"
  }

}

variable "project"{
    default = "roboshop"
  
}
