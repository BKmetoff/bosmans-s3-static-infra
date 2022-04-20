output "bucket_id" {
  description = "The s3 bucket name"
  value       = aws_s3_bucket_website_configuration.website[0].id
}

output "website_domain" {
  description = "The s3 website domain"
  value       = aws_s3_bucket_website_configuration.website[0].website_domain
}

output "website_endpoint" {
  description = "The s3 website endpoint"
  value       = aws_s3_bucket_website_configuration.website[0].website_endpoint
}

output "bucket_arn" {
  description = "The ARN of the bucket"
  value       = aws_s3_bucket.bucket.arn
}
