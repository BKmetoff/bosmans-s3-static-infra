Basic terraform configuration to deploy a single static website to AWS S3.
Currently, the path to the website contents is set to `../static_content`

<!-- BEGIN_TF_DOCS -->

## Requirements

| Name                                                   | Version |
| ------------------------------------------------------ | ------- |
| <a name="requirement_aws"></a> [aws](#requirement_aws) | ~> 3.0  |

## Providers

No providers.

## Modules

| Name                                      | Source       | Version |
| ----------------------------------------- | ------------ | ------- |
| <a name="module_s3"></a> [s3](#module_s3) | ./modules/s3 | n/a     |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name                                                                                                                 | Description             |
| -------------------------------------------------------------------------------------------------------------------- | ----------------------- |
| <a name="output_bosmans_s3_id"></a> [bosmans_s3_id](#output_bosmans_s3_id)                                           | The s3 bucket name      |
| <a name="output_bosmans_s3_website_domain"></a> [bosmans_s3_website_domain](#output_bosmans_s3_website_domain)       | The s3 website domain   |
| <a name="output_bosmans_s3_website_endpoint"></a> [bosmans_s3_website_endpoint](#output_bosmans_s3_website_endpoint) | The s3 website endpoint |

<!-- END_TF_DOCS -->
