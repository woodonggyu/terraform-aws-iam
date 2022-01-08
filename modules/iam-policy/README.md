# iam-policy

Provides an IAM policy and attaches a managed IAM policy to an IAM group.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.11 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.60.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.71.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_group_policy_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_policy_attachment) | resource |
| [aws_iam_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_policy"></a> [create\_policy](#input\_create\_policy) | Whether create policy, or not | `bool` | `true` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of the IAM policy | `string` | `null` | no |
| <a name="input_groups"></a> [groups](#input\_groups) | The groups the policy should be applied to | `list(any)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the policy | `string` | `null` | no |
| <a name="input_path"></a> [path](#input\_path) | Path in which to create the policy | `string` | `"/"` | no |
| <a name="input_policy"></a> [policy](#input\_policy) | The policy document | `any` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Map of resource tags for the IAM Policy | `map(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_iam_policy_arn"></a> [iam\_policy\_arn](#output\_iam\_policy\_arn) | The ARN assigned by AWS to this policy |
| <a name="output_iam_policy_description"></a> [iam\_policy\_description](#output\_iam\_policy\_description) | The description of the policy |
| <a name="output_iam_policy_id"></a> [iam\_policy\_id](#output\_iam\_policy\_id) | The ARN assigned by AWS to this policy |
| <a name="output_iam_policy_name"></a> [iam\_policy\_name](#output\_iam\_policy\_name) | The name of the policy |
| <a name="output_iam_policy_path"></a> [iam\_policy\_path](#output\_iam\_policy\_path) | The path of the policy in IAM |
| <a name="output_iam_policy_policy"></a> [iam\_policy\_policy](#output\_iam\_policy\_policy) | The policy document |
| <a name="output_iam_policy_policy_id"></a> [iam\_policy\_policy\_id](#output\_iam\_policy\_policy\_id) | The policy's ID |
| <a name="output_iam_policy_tags_all"></a> [iam\_policy\_tags\_all](#output\_iam\_policy\_tags\_all) | A map of tags assigned to the resource, including those inherited from the provider default\_tags configuration block |
<!-- END_TF_DOCS -->