locals {
  bucket_name_prod = "bosmans-and-beyond"
  bucket_tag_name  = title(replace(local.bucket_name_prod, "-", " "))
  organization     = "BKmetoff"
  repository       = "bosmans-v2"
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


# Allows github to access AWS -> https://github.blog/changelog/2022-01-13-github-actions-update-on-oidc-based-deployments-to-aws/
resource "aws_iam_openid_connect_provider" "github" {
  url             = "https://token.actions.githubusercontent.com"
  client_id_list  = ["sts.amazonaws.com"]
  thumbprint_list = ["6938fd4d98bab03faadb97b34396831e3780aea1"]
}

# s3 prod
module "s3_prod" {
  source      = "./modules/s3"
  bucket_acl  = "public-read"
  bucket_name = local.bucket_name_prod
  bucket_tags = {
    Name        = local.bucket_tag_name
    Environment = "Production"
  }

  website        = true
  index_document = "index.html"
  error_document = "error.html"
}

# GH action prod
module "github_actions_prod" {
  source       = "./modules/github_actions"
  organization = local.organization
  repository   = local.repository
  bucket_name  = local.bucket_name_prod
  oidc_arn     = aws_iam_openid_connect_provider.github.arn
}

# s3 staging
module "s3_staging" {
  source      = "./modules/s3"
  bucket_acl  = "public-read"
  bucket_name = "${local.bucket_name_prod}-staging"
  bucket_tags = {
    Name        = "${local.bucket_tag_name} Staging"
    Environment = "Staging"
  }

  website        = true
  index_document = "index.html"
  error_document = "error.html"
}

# GH action staging
module "github_actions_staging" {
  source       = "./modules/github_actions"
  organization = local.organization
  repository   = local.repository
  bucket_name  = "${local.bucket_name_prod}-staging"
  oidc_arn     = aws_iam_openid_connect_provider.github.arn
  staging      = true
}
