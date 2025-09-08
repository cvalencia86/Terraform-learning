
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.12.0"
      region = "us-east-2"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.5.3"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.7.2"
    }
  }
}