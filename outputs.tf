# prod
output "prod_bosmans_s3_endpoint" {
  description = "Endpoint prod"
  value       = module.s3_prod.website_endpoint
}

output "prod_gh_actions_assume_role_arn" {
  description = "IAM ARN of assumed role - prod"
  value       = module.github_actions_prod.aws_iam_role_arn
}

# staging
output "staging_bosmans_s3_endpoint" {
  description = "Endpoint staging"
  value       = module.s3_staging.website_endpoint
}

output "staging_gh_actions_assume_role_arn" {
  description = "IAM ARN of assumed role - staging"
  value       = module.github_actions_staging.aws_iam_role_arn
}
