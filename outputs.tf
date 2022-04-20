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

output "bosmans_s3_bucket_arn" {
  description = "The s3 bucket ARN"
  value       = module.s3.bucket_arn
}

output "gh_actions_iam_role_to_assume_name" {
  description = "AWS IAM role ARN to assume"
  value       = module.github_actions.aws_iam_role_arn
}

output "gh_actions_iam_role_to_assume_arn" {
  description = "AWS IAM nameARN to assume"
  value       = module.github_actions.aws_iam_role_name
}
