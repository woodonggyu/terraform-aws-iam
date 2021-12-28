output "iam_group_id" {
  description = "The group's ID"
  value       = aws_iam_group.this[*].id
}

output "iam_group_arn" {
  description = "The ARN assigned by AWS for this group"
  value       = aws_iam_group.this[*].arn
}

output "iam_group_name" {
  description = "The group's name"
  value       = aws_iam_group.this[*].name
}

output "iam_group_unique_id" {
  description = "The unique ID assigned by AWS"
  value       = aws_iam_group.this[*].unique_id
}

output "iam_group_membership_name" {
  description = "The name to identify the Group Membership"
  value       = aws_iam_group_membership.this[*].name
}

output "iam_group_membership_users" {
  description = "list of IAM User names"
  value       = aws_iam_group_membership.this[*].users
}

output "iam_group_membership_group" {
  description = "IAM Group name"
  value       = aws_iam_group_membership.this[*].group
}