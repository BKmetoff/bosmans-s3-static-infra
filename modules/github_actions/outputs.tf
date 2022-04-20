output "aws_iam_role_arn" {
  description = "AWS IAM role ARN to assume"
  value       = aws_iam_role.github_actions.arn
}
