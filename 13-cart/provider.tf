terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }

  backend "s3" {
    bucket = "roboshop-infra-prod-remote-state"
    key    = "roboshop-infra-prod-cart"
    region = "us-east-1"
    dynamodb_table = "roboshop-infra-prod-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}