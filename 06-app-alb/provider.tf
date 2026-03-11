terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "terraform-remote-stater"
    key    = "expense-dev-app"
    region = "us-east-1"
    dynamodb_table = "dynamo-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}