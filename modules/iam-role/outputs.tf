output "iam_role_arn" {
  description = "Amazon Resource Name (ARN) specifying the role"
  value       = element(concat(aws_iam_role.this[*].arn, [""]), 0)
}

output "iam_role_create_date" {
  description = "Creation date of the IAM role"
  value       = element(concat(aws_iam_role.this[*].create_date, [""]), 0)
}

output "iam_role_id" {
  description = "Name of the role"
  value       = element(concat(aws_iam_role.this[*].id, [""]), 0)
}

output "iam_role_name" {
  description = "Name of the role"
  value       = element(concat(aws_iam_role.this[*].name, [""]), 0)
}

output "iam_role_tags" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block"
  value       = element(concat(aws_iam_role.this[*].tags_all, [""]), 0)
}

output "iam_role_unique_id" {
  description = "Stable and unique string identifying the role"
  value       = element(concat(aws_iam_role.this[*].unique_id, [""]), 0)
}