provider "aws" {
  region  = "ap-northeast-2"
  profile = "default"
}

module "iam_account" {
  source = "../../modules/iam-account"

  account_alias = "test-for-account-alias"

  allow_users_to_change_password = true
  hard_expiry                    = false
  max_password_age               = 90
  minimum_password_length        = 8
  require_lowercase_characters   = true
  require_numbers                = true
  require_symbols                = true
  require_uppercase_characters   = true
}
