provider "aws" {
  region  = "ap-northeast-2"
  profile = "default"
}

module "aws_iam" {
  source = "../../modules/iam-user"

  users         = ["alpha", "bravo", "charlie", "delta"]
  path          = "/"
  force_destroy = true

  tags = [
    {
      "Name" : "alpha",
      "Team" : "Security Engineering"
    },
    {
      "Name" : "bravo",
      "Team" : "Security Engineering"
    },
    {
      "Name" : "charlie",
      "Team" : "Security Engineering"
    },
    {
      "Name" : "delta",
      "Team" : "Security Engineering"
    }
  ]

  pgp_keyfile = "0xD8C09E56-pub.asc"
}