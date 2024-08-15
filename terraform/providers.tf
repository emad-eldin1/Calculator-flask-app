terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  profile = "default" # the profile which be defualt at the top of secret access key 
  region  = var.region
}