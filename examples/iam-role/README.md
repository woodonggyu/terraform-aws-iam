# iam-role

Provides an IAM role and attaches a managed IAM policy to an IAM role.

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
| <a name="module_iam_policy"></a> [iam\_policy](#module\_iam\_policy) | ../../modules/iam-policy | n/a |
| <a name="module_iam_role"></a> [iam\_role](#module\_iam\_role) | ../../modules/iam-role | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->