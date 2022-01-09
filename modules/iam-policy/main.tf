resource "aws_iam_policy" "this" {
  count = var.create_policy ? 1 : 0

  name        = var.name
  path        = var.path
  description = var.description

  policy = jsonencode(var.policy)

  tags = var.tags
}

resource "aws_iam_group_policy_attachment" "this" {
  count = length(var.attachment) > 0 ? length(var.attachment) : 0

  group      = var.attachment[count.index]["group"]
  policy_arn = var.attachment[count.index]["policy_arn"]
}