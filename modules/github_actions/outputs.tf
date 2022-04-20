output "aws_iam_role_arn" {
  description = "AWS IAM role ARN to assume"
  value       = aws_iam_role.github_actions.arn
}

output "aws_iam_role_name" {
  description = "AWS IAM role name to assume"
  value       = aws_iam_role.github_actions.name
}
