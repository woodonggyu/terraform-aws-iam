variable "account_alias" {
  type        = string
  description = "The account alias"
}

variable "create_account_password_policy" {
  type        = bool
  description = "Whether to create AWS IAM account password policy"
  default     = true
}

variable "allow_users_to_change_password" {
  type        = bool
  description = "Whether to allow users to change their own password"
  default     = true
}

variable "hard_expiry" {
  type        = bool
  description = "Whether users are prevented from setting a new password after their password has expired"
  default     = false
}

variable "max_password_age" {
  type        = number
  description = "The number of days that an user password is valid"
  default     = 90
}

variable "minimum_password_length" {
  type        = number
  description = "Minimum length to require for user passwords"
  default     = 8
}

variable "password_reuse_prevention" {
  type        = number
  description = "The number of previous passwords that users are prevented from reusing"
  default     = null
}

variable "require_lowercase_characters" {
  type        = bool
  description = "Whether to require lowercase characters for user passwords"
  default     = true
}

variable "require_numbers" {
  type        = bool
  description = "Whether to require numbers for user passwords"
  default     = true
}

variable "require_symbols" {
  type        = bool
  description = "Whether to require symbols for user passwords"
  default     = true
}

variable "require_uppercase_characters" {
  type        = bool
  description = "Whether to require uppercase characters for user passwords"
  default     = true
}