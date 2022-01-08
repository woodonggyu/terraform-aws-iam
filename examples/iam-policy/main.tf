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

module "iam_policy" {
  source = "../../modules/iam-policy"

  name = "test-policy"

  policy = {
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Action" : [
          "ec2:Describe*"
        ],
        "Effect" : "Allow",
        "Resource" : "*"
      }
    ]
  }

  tags = {
    "Name" : "alpha",
    "Team" : "Security Engineering"
  }

  groups = [
    {
      group      = element(module.iam_group.iam_group_name, 0)
      policy_arn = module.iam_policy.iam_policy_arn
    },
    {
      group      = element(module.iam_group.iam_group_name, 1)
      policy_arn = module.iam_policy.iam_policy_arn
    }
  ]
}