resource "aws_kms_key" "encryption_key" {
  description             = "Key for encrypting ${var.bucket_name}"
  deletion_window_in_days = 10
  enable_key_rotation     = true
}

resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  tags   = var.bucket_tags
}


resource "aws_s3_bucket_acl" "acl" {
  bucket = aws_s3_bucket.bucket.id
  acl    = var.bucket_acl
}

resource "aws_s3_bucket_cors_configuration" "s3_cors" {
  count  = var.website ? 1 : 0
  bucket = aws_s3_bucket.bucket.bucket

  cors_rule {
    allowed_headers = ["Authorization", "Content-Length"]
    allowed_methods = ["GET"]
    allowed_origins = ["*"]
    max_age_seconds = 3000
  }
}

data "aws_iam_policy_document" "read_document" {
  count = var.website ? 1 : 0
  statement {
    sid    = "AllowPublicRead"
    effect = "Allow"

    resources = [
      "arn:aws:s3:::${var.bucket_name}",
      "arn:aws:s3:::${var.bucket_name}/*"
    ]

    actions = ["S3:GetObject"]

    principals {
      type        = "*"
      identifiers = ["*"]
    }
  }
}

resource "aws_s3_bucket_policy" "read_policy" {
  count  = var.website ? 1 : 0
  bucket = aws_s3_bucket.bucket.bucket
  policy = data.aws_iam_policy_document.read_document[0].json
}

resource "aws_s3_bucket_website_configuration" "website" {
  count  = var.website ? 1 : 0
  bucket = aws_s3_bucket.bucket.bucket

  index_document {
    suffix = var.index_document
  }

  error_document {
    key = var.error_document
  }
}


resource "aws_s3_bucket_object" "static_files" {
  bucket       = aws_s3_bucket.bucket.id
  for_each     = var.files
  key          = replace(each.value, var.website_files_path, "")
  source       = "${var.website_files_path}${each.value}"
  acl          = var.bucket_acl
  etag         = filemd5("${var.website_files_path}${each.value}")
  content_type = lookup(var.mime_types, split(".", each.value)[length(split(".", each.value)) - 1])
}
