provider "aws" {
  region  = "ap-northeast-2"
  profile = "default"
}

module "iam_policy" {
  source = "../../modules/iam-policy"

  name = "Policy01"

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
}

module "iam_role" {
  source = "../../modules/iam-role"

  name                 = "Role01"
  max_session_duration = 7200

  assume_role_policy = {
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  }

  attachment = [
    {
      role       = module.iam_role.iam_role_name
      policy_arn = module.iam_policy.iam_policy_arn
    }
  ]
}