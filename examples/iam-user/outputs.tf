output "iam_user_arn" {
  description = "The ARN assigned by AWS for this user"
  value       = module.aws_iam[*].iam_user_arn
}

output "iam_user_name" {
  description = "The user's name"
  value       = module.aws_iam[*].iam_user_name
}

output "iam_user_unique_id" {
  description = "The unique ID assigned by AWS"
  value       = module.aws_iam[*].iam_user_unique_id
}

output "iam_access_key_id" {
  description = "Access key ID"
  value       = module.aws_iam[*].iam_access_key_id
}

output "iam_access_key_encrypted_password" {
  description = "Encrypted secret, base64 encoded, if pgp_key was specified"
  value       = module.aws_iam[*].iam_access_key_encrypted_password
}

output "iam_user_login_profile_encrypted_password" {
  description = "The encrypted password, base64 encoded"
  value       = module.aws_iam[*].iam_user_login_profile_encrypted_password
}