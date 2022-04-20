locals {
  bucket_name = "bosmans-and-beyond"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  backend "s3" {
    bucket  = "bosmans-and-beyond-tf-state"
    key     = "bosmans-and-beyond.tfstate"
    region  = "eu-west-1"
    encrypt = true
    acl     = "bucket-owner-full-control"
  }
}

provider "aws" {
  profile = "default"
  region  = "eu-west-1"
}



# s3
module "s3" {
  source      = "./modules/s3"
  bucket_acl  = "public-read"
  bucket_name = local.bucket_name
  bucket_tags = {
    Name        = "Bosmans and Beyond"
    Environment = "Production"
  }

  website        = true
  index_document = "index.html"
  error_document = "error.html"
}


# GH actions
module "github_actions" {
  source       = "./modules/github_actions"
  organization = "bkmetoff"
  repository   = "bosmans-v2"
  bucket_name  = "bosmans-and-beyond"
}
