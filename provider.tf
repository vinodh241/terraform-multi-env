terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.98.0"
    }
  }

  # state.config
  backend "s3" {

  }
}

provider "aws" {
  region = "us-east-1" # provide any region 
}