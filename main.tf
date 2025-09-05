# Configure the Terraform Cloud backend
terraform {
  cloud {
    # Replace with your organization name
    organization = "cvalencia-remote"

    workspaces {
      name = "remote-state-demo"
    }
  }
}

provider "aws" {
    region = "us-east-2"
}

#create an S3 bucket
resource "aws_s3_bucket" "terraform-bucket" {
  bucket = "terraform-bucket-19863008"
    tags = {
    Name        = "My Terraform Bucket"
    Owner       = "DevOps Team"
  } 
}
