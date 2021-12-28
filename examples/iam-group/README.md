# iam-group

Manages IAM group for the AWS account.

# Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.11 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.60.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_iam_group"></a> [iam\_group](#module\_iam\_group) | ../../modules/iam-group | n/a |
| <a name="module_iam_group_backend"></a> [iam\_group\_backend](#module\_iam\_group\_backend) | ../../modules/iam-group | n/a |
| <a name="module_iam_group_frontend"></a> [iam\_group\_frontend](#module\_iam\_group\_frontend) | ../../modules/iam-group | n/a |
| <a name="module_iam_group_policy"></a> [iam\_group\_policy](#module\_iam\_group\_policy) | ../../modules/iam-group//modules/iam-group-policy | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->