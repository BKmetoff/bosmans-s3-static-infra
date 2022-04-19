output "bosmans_s3_id" {
  description = "The s3 bucket name"
  value       = module.s3.bucket_id
}

output "bosmans_s3_website_domain" {
  description = "The s3 website domain"
  value       = module.s3.website_domain
}

output "bosmans_s3_website_endpoint" {
  description = "The s3 website endpoint"
  value       = module.s3.website_endpoint
}
