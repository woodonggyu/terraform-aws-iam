resource "aws_iam_group_policy" "this" {
  count = length(var.groups)

  name   = var.name
  group  = element(var.groups, count.index)
  policy = jsonencode(var.policy)
}