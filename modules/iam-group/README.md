# iam-group

Manages IAM group for the AWS account.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.11 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.60.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.60.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group) | resource |
| [aws_iam_group_membership.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_membership) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_group"></a> [create\_group](#input\_create\_group) | Whether create group or not | `bool` | `false` | no |
| <a name="input_create_group_membership"></a> [create\_group\_membership](#input\_create\_group\_membership) | Whether create group membership or not | `bool` | `true` | no |
| <a name="input_group_name"></a> [group\_name](#input\_group\_name) | The name to identify the Group Membership | `string` | `null` | no |
| <a name="input_group_users"></a> [group\_users](#input\_group\_users) | A list of IAM User names to associate with the Group | `list(string)` | `null` | no |
| <a name="input_groups"></a> [groups](#input\_groups) | The group's name | `list(string)` | `null` | no |
| <a name="input_path"></a> [path](#input\_path) | Path in which to create the group | `string` | `"/"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_iam_group_arn"></a> [iam\_group\_arn](#output\_iam\_group\_arn) | The ARN assigned by AWS for this group |
| <a name="output_iam_group_id"></a> [iam\_group\_id](#output\_iam\_group\_id) | The group's ID |
| <a name="output_iam_group_membership_group"></a> [iam\_group\_membership\_group](#output\_iam\_group\_membership\_group) | IAM Group name |
| <a name="output_iam_group_membership_name"></a> [iam\_group\_membership\_name](#output\_iam\_group\_membership\_name) | The name to identify the Group Membership |
| <a name="output_iam_group_membership_users"></a> [iam\_group\_membership\_users](#output\_iam\_group\_membership\_users) | list of IAM User names |
| <a name="output_iam_group_name"></a> [iam\_group\_name](#output\_iam\_group\_name) | The group's name |
| <a name="output_iam_group_unique_id"></a> [iam\_group\_unique\_id](#output\_iam\_group\_unique\_id) | The unique ID assigned by AWS |
<!-- END_TF_DOCS -->