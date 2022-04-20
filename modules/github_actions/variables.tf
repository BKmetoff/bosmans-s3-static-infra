variable "organization" {
  description = "Name of the GH organization"
  type        = string
}

variable "repository" {
  description = "Name of the GH repo"
  type        = string
}

variable "bucket_name" {
  description = "Name of the s3 bucket"
  type        = string
}

variable "oidc_arn" {
  description = "ARN of the s3 bucket"
  type        = string
  default     = ""
}
