Basic terraform configuration to deploy a single static website to AWS S3.
The path to the website contents is set to `../static_content`.
This path is relative to the root of the repo.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.75.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_github_actions_prod"></a> [github\_actions\_prod](#module\_github\_actions\_prod) | ./modules/github_actions | n/a |
| <a name="module_github_actions_staging"></a> [github\_actions\_staging](#module\_github\_actions\_staging) | ./modules/github_actions | n/a |
| <a name="module_s3_prod"></a> [s3\_prod](#module\_s3\_prod) | ./modules/s3 | n/a |
| <a name="module_s3_staging"></a> [s3\_staging](#module\_s3\_staging) | ./modules/s3 | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_iam_openid_connect_provider.github](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_openid_connect_provider) | resource |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_prod_bosmans_s3_endpoint"></a> [prod\_bosmans\_s3\_endpoint](#output\_prod\_bosmans\_s3\_endpoint) | Endpoint prod |
| <a name="output_prod_gh_actions_assume_role_arn"></a> [prod\_gh\_actions\_assume\_role\_arn](#output\_prod\_gh\_actions\_assume\_role\_arn) | IAM ARN of assumed role - prod |
| <a name="output_staging_bosmans_s3_endpoint"></a> [staging\_bosmans\_s3\_endpoint](#output\_staging\_bosmans\_s3\_endpoint) | Endpoint staging |
| <a name="output_staging_gh_actions_assume_role_arn"></a> [staging\_gh\_actions\_assume\_role\_arn](#output\_staging\_gh\_actions\_assume\_role\_arn) | IAM ARN of assumed role - staging |
<!-- END_TF_DOCS -->
