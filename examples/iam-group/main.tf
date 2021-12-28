provider "aws" {
  region  = "ap-northeast-2"
  profile = "default"
}


module "iam_group" {
  source = "../../modules/iam-group"

  create_group = true
  groups       = ["backend", "frontend", "devops"]

  create_group_membership = false
}

module "iam_group_backend" {
  source = "../../modules/iam-group"

  group_name  = "backend"
  group_users = ["alpha", "bravo"]

  depends_on = [module.iam_group]
}

module "iam_group_frontend" {
  source = "../../modules/iam-group"

  group_name  = "frontend"
  group_users = ["charlie"]

  depends_on = [module.iam_group]
}


module "iam_group_policy" {
  source = "../../modules/iam-group//modules/iam-group-policy"

  name   = "TEST01"
  groups = ["backend", "frontend"]
  policy = {
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Resource = "*"
      }
    ]
  }

  depends_on = [module.iam_group]
}