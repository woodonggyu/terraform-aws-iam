resource "aws_iam_role" "this" {
  count = var.create_role ? 1 : 0

  name                  = var.name
  description           = var.description
  path                  = var.path
  force_detach_policies = var.force_detach_policies
  max_session_duration  = var.max_session_duration
  permissions_boundary  = var.permissions_boundary

  assume_role_policy = jsonencode(var.assume_role_policy)

  managed_policy_arns = var.managed_policy_arns

  tags = var.tags
}

resource "aws_iam_role_policy_attachment" "this" {
  count = length(var.attachment) > 0 ? length(var.attachment) : 0

  role       = var.attachment[count.index]["role"]
  policy_arn = var.attachment[count.index]["policy_arn"]

}