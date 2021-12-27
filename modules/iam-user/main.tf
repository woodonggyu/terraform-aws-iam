resource "aws_iam_user" "this" {
  count = length(var.users)

  name                 = element(var.users, count.index)
  path                 = var.path
  permissions_boundary = var.permissions_boundary
  force_destroy        = var.force_destroy

  tags = element(var.tags, count.index)
}

resource "aws_iam_access_key" "this" {
  count = length(var.users)

  user    = element(var.users, count.index)
  status  = var.status
  pgp_key = file(var.pgp_keyfile)

  depends_on = [aws_iam_user.this]
}

resource "aws_iam_user_login_profile" "this" {
  count = length(var.users)

  pgp_key                 = file(var.pgp_keyfile)
  user                    = element(var.users, count.index)
  password_length         = var.password_length
  password_reset_required = var.password_reset_required

  depends_on = [aws_iam_user.this]
}