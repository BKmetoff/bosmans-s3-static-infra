<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_kms_key.encryption_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key) | resource |
| [aws_s3_bucket.bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_acl.acl](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_acl) | resource |
| [aws_s3_bucket_cors_configuration.s3_cors](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_cors_configuration) | resource |
| [aws_s3_bucket_object.static_files](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_object) | resource |
| [aws_s3_bucket_policy.read_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy) | resource |
| [aws_s3_bucket_website_configuration.website](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_website_configuration) | resource |
| [aws_iam_policy_document.read_document](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_acl"></a> [bucket\_acl](#input\_bucket\_acl) | ACL of the bucket objects | `string` | n/a | yes |
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | The name of the bucket | `string` | n/a | yes |
| <a name="input_bucket_tags"></a> [bucket\_tags](#input\_bucket\_tags) | A map of tags to add to the bucket | `map(string)` | n/a | yes |
| <a name="input_error_document"></a> [error\_document](#input\_error\_document) | The title of the error document | `string` | n/a | yes |
| <a name="input_files"></a> [files](#input\_files) | A fileset of the website files | `any` | n/a | yes |
| <a name="input_index_document"></a> [index\_document](#input\_index\_document) | The title of the index document | `string` | n/a | yes |
| <a name="input_mime_types"></a> [mime\_types](#input\_mime\_types) | The mime types of the website files | `map(string)` | n/a | yes |
| <a name="input_website"></a> [website](#input\_website) | Weather a website configuration should be applied to the bucket | `bool` | `false` | no |
| <a name="input_website_files_path"></a> [website\_files\_path](#input\_website\_files\_path) | The path to the content of the website files | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket_id"></a> [bucket\_id](#output\_bucket\_id) | The s3 bucket name |
| <a name="output_website_domain"></a> [website\_domain](#output\_website\_domain) | The s3 website domain |
| <a name="output_website_endpoint"></a> [website\_endpoint](#output\_website\_endpoint) | The s3 website endpoint |
<!-- END_TF_DOCS -->