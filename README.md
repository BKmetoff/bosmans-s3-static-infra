Basic terraform configuration to deploy a single static website to AWS S3.
Currently, the path to the website contents is set to `../static_content`

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_github_actions"></a> [github\_actions](#module\_github\_actions) | ./modules/github_actions | n/a |
| <a name="module_s3"></a> [s3](#module\_s3) | ./modules/s3 | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bosmans_s3_bucket_arn"></a> [bosmans\_s3\_bucket\_arn](#output\_bosmans\_s3\_bucket\_arn) | The s3 bucket ARN |
| <a name="output_bosmans_s3_id"></a> [bosmans\_s3\_id](#output\_bosmans\_s3\_id) | The s3 bucket name |
| <a name="output_bosmans_s3_website_domain"></a> [bosmans\_s3\_website\_domain](#output\_bosmans\_s3\_website\_domain) | The s3 website domain |
| <a name="output_bosmans_s3_website_endpoint"></a> [bosmans\_s3\_website\_endpoint](#output\_bosmans\_s3\_website\_endpoint) | The s3 website endpoint |
| <a name="output_gh_actions_iam_role_to_assume_arn"></a> [gh\_actions\_iam\_role\_to\_assume\_arn](#output\_gh\_actions\_iam\_role\_to\_assume\_arn) | AWS IAM nameARN to assume |
| <a name="output_gh_actions_iam_role_to_assume_name"></a> [gh\_actions\_iam\_role\_to\_assume\_name](#output\_gh\_actions\_iam\_role\_to\_assume\_name) | AWS IAM role ARN to assume |
<!-- END_TF_DOCS -->
