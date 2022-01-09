resource "aws_iam_policy" "this" {
  count = var.create_policy ? 1 : 0

  name        = var.name
  path        = var.path
  description = var.description

  policy = jsonencode(var.policy)

  tags = var.tags
}

resource "aws_iam_group_policy_attachment" "this" {
  count = length(var.groups) > 0 ? length(var.groups) : 0

  group      = var.groups[count.index]["group"]
  policy_arn = var.groups[count.index]["policy_arn"]
}