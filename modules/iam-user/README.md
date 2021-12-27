# iam-user

Provides an IAM user (include. access key, login profile) for the AWS Account.

## How to Use PGP

```bash
$ brew install gpg
$ gpg --full-generate-key
$ gpg --list-secret-keys --keyid-format LONG
$ gpg --armor --export [public_key]

# decrypt pgp key
$ terraform output -json iam_user_login_profile_encrypted_password | jq -r '.[0][0]' | base64 --decode | gpg --decrypt ; echo
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.11 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.60.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.70.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_access_key.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_access_key) | resource |
| [aws_iam_user.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |
| [aws_iam_user_login_profile.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_login_profile) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_force_destroy"></a> [force\_destroy](#input\_force\_destroy) | When destroying this user, destroy even if it has non-Terraform-managed IAM access keys, login profile or MFA devices | `bool` | `false` | no |
| <a name="input_password_length"></a> [password\_length](#input\_password\_length) | The length of the generated password on resource creation | `number` | `20` | no |
| <a name="input_password_reset_required"></a> [password\_reset\_required](#input\_password\_reset\_required) | Whether the user should be forced to reset the generated password on resource creation | `bool` | `true` | no |
| <a name="input_path"></a> [path](#input\_path) | Path in which to create the user | `string` | `"/"` | no |
| <a name="input_permissions_boundary"></a> [permissions\_boundary](#input\_permissions\_boundary) | The ARN of the policy that is used to set the permissions boundary for the user | `string` | `null` | no |
| <a name="input_pgp_keyfile"></a> [pgp\_keyfile](#input\_pgp\_keyfile) | The Keyfile of Either a base-64 encoded PGP public key for use in the encrypted\_secret output attribute | `string` | n/a | yes |
| <a name="input_status"></a> [status](#input\_status) | Access key status to apply | `string` | `"Active"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Key-value map of tags for the IAM user | `list(map(string))` | `null` | no |
| <a name="input_users"></a> [users](#input\_users) | The user's name | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_iam_access_key_encrypted_password"></a> [iam\_access\_key\_encrypted\_password](#output\_iam\_access\_key\_encrypted\_password) | Encrypted secret, base64 encoded, if pgp\_key was specified |
| <a name="output_iam_access_key_id"></a> [iam\_access\_key\_id](#output\_iam\_access\_key\_id) | Access key ID |
| <a name="output_iam_user_arn"></a> [iam\_user\_arn](#output\_iam\_user\_arn) | The ARN assigned by AWS for this user |
| <a name="output_iam_user_login_profile_encrypted_password"></a> [iam\_user\_login\_profile\_encrypted\_password](#output\_iam\_user\_login\_profile\_encrypted\_password) | The encrypted password, base64 encoded |
| <a name="output_iam_user_name"></a> [iam\_user\_name](#output\_iam\_user\_name) | The user's name |
| <a name="output_iam_user_unique_id"></a> [iam\_user\_unique\_id](#output\_iam\_user\_unique\_id) | The unique ID assigned by AWS |
<!-- END_TF_DOCS -->