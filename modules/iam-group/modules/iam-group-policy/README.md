# iam-group-policy

Provides an IAM policy attached to a group.

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
| [aws_iam_group_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_groups"></a> [groups](#input\_groups) | The IAM group to attach to the policy | `list(string)` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the policy | `string` | n/a | yes |
| <a name="input_policy"></a> [policy](#input\_policy) | The policy document | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_iam_group_policy_group"></a> [iam\_group\_policy\_group](#output\_iam\_group\_policy\_group) | The group to which this policy applies |
| <a name="output_iam_group_policy_id"></a> [iam\_group\_policy\_id](#output\_iam\_group\_policy\_id) | The group policy ID |
| <a name="output_iam_group_policy_name"></a> [iam\_group\_policy\_name](#output\_iam\_group\_policy\_name) | The name of the policy |
<!-- END_TF_DOCS -->