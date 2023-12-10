module "s3-backend" {
  source = "git@github.com:olabola1108/Semantic-Versioning.git//s3-module?ref=v1.2.1"
}

 terraform {
  backend "s3" {
    bucket         = "new-dev-477"
    key            = "actions/terraform.tfstate"
    #dynamodb_table = "HR-terraform-remote-state-dynamo"
    region         = "us-east-2"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
 }

provider "aws" {
  region = "us-east-2"
}
 



