output "iam_user_arn" {
  description = "The ARN assigned by AWS for this user"
  value       = aws_iam_user.this[*].arn
}

output "iam_user_name" {
  description = "The user's name"
  value       = aws_iam_user.this[*].name
}

output "iam_user_unique_id" {
  description = "The unique ID assigned by AWS"
  value       = aws_iam_user.this[*].unique_id
}

output "iam_access_key_id" {
  description = "Access key ID"
  value       = aws_iam_access_key.this[*].id
}

output "iam_access_key_encrypted_password" {
  description = "Encrypted secret, base64 encoded, if pgp_key was specified"
  value       = aws_iam_access_key.this[*].encrypted_secret
}

output "iam_user_login_profile_encrypted_password" {
  description = "The encrypted password, base64 encoded"
  value       = aws_iam_user_login_profile.this[*].encrypted_password
}

