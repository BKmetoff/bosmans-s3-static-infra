locals {
  bucket_name    = "bosmans-and-beyond"
  source_path    = "../static_content/"
  filtered_files = fileset(local.source_path, "**/*.{js,css,html,jpeg,jpg,png,svg,ttf}")
  mime_types = {
    css  = "text/css"
    html = "text/html"
    jpeg = "image/jpeg"
    jpg  = "image/jpeg"
    js   = "application/javascript"
    json = "application/json"
    png  = "image/png"
    svg  = "image/svg+xml"
    ttf  = "font/ttf"
  }
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

  website            = true
  website_files_path = local.source_path
  files              = local.filtered_files
  mime_types         = local.mime_types
  index_document     = "index.html"
  error_document     = "error.html"
}
