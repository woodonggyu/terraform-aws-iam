output "iam_policy_id" {
  description = "The ARN assigned by AWS to this policy"
  value       = element(concat(aws_iam_policy.this[*].id, [""]), 0)
}

output "iam_policy_arn" {
  description = "The ARN assigned by AWS to this policy"
  value       = element(concat(aws_iam_policy.this[*].id, [""]), 0)
}

output "iam_policy_description" {
  description = "The description of the policy"
  value       = element(concat(aws_iam_policy.this[*].id, [""]), 0)
}

output "iam_policy_name" {
  description = "The name of the policy"
  value       = element(concat(aws_iam_policy.this[*].id, [""]), 0)
}

output "iam_policy_path" {
  description = "The path of the policy in IAM"
  value       = element(concat(aws_iam_policy.this[*].id, [""]), 0)
}

output "iam_policy_policy" {
  description = "The policy document"
  value       = element(concat(aws_iam_policy.this[*].id, [""]), 0)
}

output "iam_policy_policy_id" {
  description = "The policy's ID"
  value       = element(concat(aws_iam_policy.this[*].id, [""]), 0)
}

output "iam_policy_tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block"
  value       = aws_iam_policy.this[*].tags_all
}