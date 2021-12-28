output "iam_group_policy_id" {
  description = "The group policy ID"
  value       = aws_iam_group_policy.this[*].id
}

output "iam_group_policy_group" {
  description = "The group to which this policy applies"
  value       = aws_iam_group_policy.this[*].group
}

output "iam_group_policy_name" {
  description = "The name of the policy"
  value       = aws_iam_group_policy.this[*].name
}