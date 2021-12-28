resource "aws_iam_group" "this" {
  count = var.create_group ? length(var.groups) : 0

  name = element(var.groups, count.index)
  path = var.path
}

resource "aws_iam_group_membership" "this" {
  count = var.create_group_membership ? 1 : 0

  group = var.group_name
  name  = var.group_name
  users = var.group_users

  depends_on = [aws_iam_group.this]
}